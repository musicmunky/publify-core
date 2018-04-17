class Admin::PicksController < Admin::BaseController
    before_action :login_required, only: [:preview, :preview_page]
    #before_action :auto_discovery_feed, only: [:show, :index]
    #before_action :verify_config

    layout :get_layout
#    layout :determine_layout, except: [:trackback]

    #helper :'admin/base'

    def index
        @picks = Pick.all
    end

    def new
        @pick = Pick.new
    end

    def show
    end

    def edit
        @pick = params[:id] ? Pick.find_by(id: params[:id]) : Pick.new
    end

    def create
        @pick = Pick.new(pick_params)

        if @pick.save
            flash[:notice] = "Pick successfully created!"
        else
            flash[:error] = @pick.errors.full_messages
        end
        redirect_to admin_picks_url
    end

    def update
    end

    def destroy
        @pick.destroy if Pick.where(id: params[:id]).count > 1
        redirect_to admin_picks_url
    end

    private

    def get_layout
        case action_name
        when 'new', 'edit', 'create'
            'administration'
#            'editor'
        when 'show'
            nil
        else
            'administration'
        end
    end

    def pick_params
        params.require(:pick).permit(:title, :author, :description, :picktype, :link, :score, :pick_length, :year_published, :publisher, :isbn)
    end

end

#require 'base64'
=begin
#class Admin::PicksController < Admin::BaseController
class PicksController < ContentController
  #before_action :set_macro, only: [:new, :edit]
  before_action :set_pick, only: [:show, :edit, :update, :destroy]

#  layout :get_layout
  require 'json'

  layout :theme_layout

  #after_action :set_blog_infos


  def index
    @search = params[:search] ? params[:search] : {}
    @picks = Pick.search_with(@search).pick(params[:pick]).per(this_blog.admin_display_elements)
  end

  def new
    @pick = Pick.new
    @pick.text_filter ||= default_textfilter
    @pick.published = true
    @pick.user_id = current_user.id
  end

  def edit
    @pick.text_filter ||= default_textfilter
  end

  def create
    @pick = Pick.new(pick_params)
    @pick.published_at = Time.now
    @pick.blog = this_blog
    @pick.user_id = current_user.id

    if @pick.save
      redirect_to admin_picks_url, notice: I18n.t('admin.picks.new.success')
    else
      render :new
    end
  end

  def update
    @pick.text_filter ||= default_textfilter
    if @pick.update(pick_params)
      redirect_to admin_picks_url, notice: I18n.t('admin.picks.edit.success')
    else
      render :edit
    end
  end

  def destroy
    destroy_a(Pick)
  end

  private

  def default_textfilter
    current_user.text_filter || blog.text_filter
  end

  def set_macro
    @macros = TextFilterPlugin.macro_filters
  end

  def get_layout
    case action_name
    when 'new', 'edit', 'create'
      'editor'
    when 'show'
      nil
    else
      'administration'
    end
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_pick
    @pick = Pick.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pick_params
    params.require(:pick).permit(:title, :author, :description, :picktype)
  end
end
=end