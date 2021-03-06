class ArticlesController < ContentController
    before_action :login_required, only: [:preview, :preview_page]
    before_action :auto_discovery_feed, only: [:show, :index]
    before_action :verify_config

#    layout :theme_layout, except: [:trackback]
    layout :determine_layout, except: [:trackback]

    helper :'admin/base'

    def index
        conditions = this_blog.statuses_in_timeline ? ['type in (?, ?)', 'Article', 'Note'] : ['type = ?', 'Article']

        limit = this_blog.per_page(params[:format])
        articles_base = if params[:year].blank?
            this_blog.contents.published
        else
            this_blog.contents.published_at(params.values_at(:year, :month, :day))
        end
        @articles = articles_base.includes(:user).where(conditions).page(params[:page]).per(limit)

        @aArticles = {}

        for oArticle in @articles do
            begin
                @aTmp = {}
                oContent = Nokogiri::HTML.fragment(oArticle.body)
                oImg = oContent.search('img')
                oSummary = oContent.search('figcaption')

                sImg = ""
                sTxt = ""
                sLink = ""
                sImgSrc = ""
                sImgName = ""
                nImgId = 0
                sDate = ""
                sTitle = ""

                oDate = Time.parse(oArticle.published_at.to_s)
                sMonth = '%02d' % oDate.month
                sDay = '%02d' % oDate.day
                sLink = "blog/#{oDate.year}/#{sMonth}/#{sDay}/#{oArticle.permalink}"
                sDate = oArticle.published_at.strftime("%^b %-d, %Y")
                sTitle = oArticle.title

                if oSummary.size > 0
                    sTxt = oSummary.first.inner_html
                end

                if oImg.size > 0
                    eImg = oImg.first
                    sImgSrc = eImg['src']
                    nImgId = 0

                    if sImgSrc != ""
                        aImgSrc = sImgSrc.split("/")
                        nImgId = aImgSrc[aImgSrc.size - 2]
                    end

                    sImgName = eImg['data-imagename']
                end

            rescue => error
                logger.debug "\n ---- ERROR PARSING HTML: #{error.message} ---- \n"
            ensure
                @aTmp['link']  = sLink
                @aTmp['title'] = sTitle
                @aTmp['date']  = sDate
                @aTmp['text']  = sTxt
                @aTmp['image_src']  = sImgSrc
                @aTmp['image_name'] = sImgName
                @aTmp['image_id']   = nImgId

                @aArticles[oArticle.id] = @aTmp
            end
        end

        @page_title = this_blog.home_title_template
        @description = this_blog.home_desc_template
        if params[:year]
            @page_title = this_blog.archives_title_template
            @description = this_blog.archives_desc_template
        elsif params[:page]
            @page_title = this_blog.paginated_title_template
            @description = this_blog.paginated_desc_template
        end
        @page_title = @page_title.to_title(@articles, this_blog, params)
        @description = @description.to_title(@articles, this_blog, params)

        @keywords = this_blog.meta_keywords

        respond_to do |format|
            format.html { render_paginated_index }
            format.atom do
                render_articles_feed('atom')
            end
            format.rss do
                auto_discovery_feed(only_path: false)
                render_articles_feed('rss')
            end
        end
    end

    def search
        @articles = this_blog.articles_matching(params[:q], page: params[:page], per_page: this_blog.per_page(params[:format]))
        return error! if @articles.empty?
        @page_title = this_blog.search_title_template.to_title(@articles, this_blog, params)
        @description = this_blog.search_desc_template.to_title(@articles, this_blog, params)
        respond_to do |format|
            format.html { render 'search' }
            format.rss { render_articles_feed 'rss' }
            format.atom { render_articles_feed 'atom' }
        end
    end

    def live_search
        @search = params[:q]
        @articles = Article.search(@search)
        render :live_search, layout: false
    end

    def preview
        @article = Article.last_draft(params[:id])
        @page_title = this_blog.article_title_template.to_title(@article, this_blog, params)
        render 'read'
    end

    def check_password
        return unless request.xhr?
        @article = Article.find(params[:article][:id])
        if @article.password == params[:article][:password]
            render partial: 'articles/full_article_content', locals: { article: @article }
        else
            render partial: 'articles/password_form', locals: { article: @article }
        end
    end

    def redirect
        from = extract_feed_format(params[:from])
        factory = Article::Factory.new(this_blog, current_user)

        @article = factory.match_permalink_format(from, this_blog.permalink_format)
        return show_article if @article

        # Redirect old version with /:year/:month/:day/:title to new format,
        # because it's changed
        ['%year%/%month%/%day%/%title%', 'articles/%year%/%month%/%day%/%title%'].each do |part|
            @article = factory.match_permalink_format(from, part)
            return redirect_to URI.parse(@article.permalink_url).path, status: 301 if @article
        end

        r = Redirect.find_by!(from_path: from)
        return redirect_to r.full_to_path, status: 301 if r # Let redirection made outside of the blog on purpose (deal with it, Brakeman!)
    end

    def archives
        limit = this_blog.limit_archives_display
        @articles = this_blog.published_articles.page(params[:page]).per(limit)
        @page_title = this_blog.archives_title_template.to_title(@articles, this_blog, params)
        @keywords = this_blog.meta_keywords
        @description = this_blog.archives_desc_template.to_title(@articles, this_blog, params)
    end

    def tag
        redirect_to tags_path, status: 301
    end

    def preview_page
        @page = Page.find(params[:id])
        render 'view_page'
    end

    def view_page
        @page = Page.published.find_by!(name: Array(params[:name]).join('/'))
        @page_title = @page.title
        @description = this_blog.meta_description
        @keywords = this_blog.meta_keywords
    end

  # TODO: Move to TextfilterController?
    def markup_help
        render html: TextFilter.find(params[:id]).commenthelp
    end

private

    def determine_layout
        !@article.nil? && @article.post_type == "feature-article" ? "feature_article" : "default"
    end

    def verify_config
        if !this_blog.configured?
            redirect_to controller: 'setup', action: 'index'
        elsif User.count == 0
            redirect_to new_user_registration_path
        else
            true
        end
    end

    # See an article We need define @article before
    def show_article
        @comment = Comment.new
        @page_title = this_blog.article_title_template.to_title(@article, this_blog, params)
        @description = this_blog.article_desc_template.to_title(@article, this_blog, params)
        groupings = @article.tags
        @keywords = groupings.map(&:name).join(', ')

        auto_discovery_feed
        respond_to do |format|
            format.html { render "articles/#{@article.post_type}" }
            format.atom { render_feedback_feed('atom') }
            format.rss { render_feedback_feed('rss') }
            format.xml { render_feedback_feed('atom') }
        end
        rescue ActiveRecord::RecordNotFound
        error!
    end

    def render_articles_feed(format)
        template = "index_#{format}_feed"
        key = "articles/#{template}-#{@articles.map(&:cache_key).join('-')}"
        feed = Rails.cache.fetch(key) do
            render_to_string template, layout: false
        end
        render xml: feed
    end

    def render_feedback_feed(format)
        template = "feedback_#{format}_feed"
        key = "articles/#{template}-#{@article.cache_key}"
        feed = Rails.cache.fetch(key) do
            @feedback = @article.published_feedback
            render_to_string template, layout: false
        end
        render xml: feed
    end

    def render_paginated_index
        return error! if @articles.empty?
        auto_discovery_feed(only_path: false)
        render 'index'
    end

    def extract_feed_format(from)
        if from =~ /^.*\.rss$/
            request.format = 'rss'
            from = from.gsub(/\.rss/, '')
        elsif from =~ /^.*\.atom$/
            request.format = 'atom'
            from = from.gsub(/\.atom$/, '')
        end
        from
    end

    def error!
        @message = I18n.t('errors.no_posts_found')
        render 'articles/error', status: 200
    end
end
