# -*- encoding: utf-8 -*-
# stub: publify_core 9.0.0.pre6 ruby lib

Gem::Specification.new do |s|
  s.name = "publify_core".freeze
  s.version = "9.0.0.pre6"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Matijs van Zuijlen".freeze, "Yannick Fran\u00E7ois".freeze, "Thomas Lecavellier".freeze, "Fr\u00E9d\u00E9ric de Villamil".freeze]
  s.date = "2017-04-15"
  s.description = "Core engine for the Publify blogging system, formerly known as Typo.".freeze
  s.email = ["matijs@matijs.net".freeze]
  s.files = [".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, ".rubocop_todo.yml".freeze, ".travis.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "MIT-LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/fonts/open-sans-bold.woff".freeze, "app/assets/fonts/open-sans.woff".freeze, "app/assets/images/admin/loading.gif".freeze, "app/assets/images/admin/typologo.gif".freeze, "app/assets/images/calendar_date_select/calendar.gif".freeze, "app/assets/images/close.gif".freeze, "app/assets/images/closelabel.gif".freeze, "app/assets/images/go.png".freeze, "app/assets/images/loading.gif".freeze, "app/assets/images/nextlabel.gif".freeze, "app/assets/images/overlay.png".freeze, "app/assets/images/powered.gif".freeze, "app/assets/images/prevlabel.gif".freeze, "app/assets/images/spinner-blue.gif".freeze, "app/assets/images/spinner.gif".freeze, "app/assets/images/thumb_blank.jpg".freeze, "app/assets/javascripts/application.js".freeze, "app/assets/javascripts/cookies.js".freeze, "app/assets/javascripts/datetimepicker.js".freeze, "app/assets/javascripts/lang/da_DK.js".freeze, "app/assets/javascripts/lang/default.js".freeze, "app/assets/javascripts/lang/en_US.js".freeze, "app/assets/javascripts/lang/fr_FR.js".freeze, "app/assets/javascripts/lang/nl_NL.js".freeze, "app/assets/javascripts/lang/zh_TW.js".freeze, "app/assets/javascripts/lightbox.js".freeze, "app/assets/javascripts/observe.js".freeze, "app/assets/javascripts/publify.js".freeze, "app/assets/javascripts/publify_admin.js".freeze, "app/assets/javascripts/quicktags.js".freeze, "app/assets/javascripts/set-timeago-lang.js".freeze, "app/assets/javascripts/sidebar.js".freeze, "app/assets/javascripts/spinnable.js".freeze, "app/assets/javascripts/tagmanager.js".freeze, "app/assets/javascripts/typeahead.js".freeze, "app/assets/javascripts/widearea.js".freeze, "app/assets/stylesheets/accounts.css.scss".freeze, "app/assets/stylesheets/administration_structure.css.scss".freeze, "app/assets/stylesheets/coderay.css".freeze, "app/assets/stylesheets/datetimepicker.css".freeze, "app/assets/stylesheets/lightbox.css".freeze, "app/assets/stylesheets/publify.css.scss".freeze, "app/assets/stylesheets/publify_admin.css.scss".freeze, "app/assets/stylesheets/publify_core/.keep".freeze, "app/assets/stylesheets/rss.css".freeze, "app/assets/stylesheets/sidebar_admin.css.scss".freeze, "app/assets/stylesheets/tagmanager.css".freeze, "app/assets/stylesheets/user-styles.css".freeze, "app/assets/stylesheets/widearea.css".freeze, "app/controllers/.keep".freeze, "app/controllers/accounts_controller.rb".freeze, "app/controllers/admin/base_controller.rb".freeze, "app/controllers/admin/content_controller.rb".freeze, "app/controllers/admin/dashboard_controller.rb".freeze, "app/controllers/admin/feedback_controller.rb".freeze, "app/controllers/admin/migrations_controller.rb".freeze, "app/controllers/admin/notes_controller.rb".freeze, "app/controllers/admin/pages_controller.rb".freeze, "app/controllers/admin/post_types_controller.rb".freeze, "app/controllers/admin/profiles_controller.rb".freeze, "app/controllers/admin/redirects_controller.rb".freeze, "app/controllers/admin/resources_controller.rb".freeze, "app/controllers/admin/seo_controller.rb".freeze, "app/controllers/admin/settings_controller.rb".freeze, "app/controllers/admin/sidebar_controller.rb".freeze, "app/controllers/admin/tags_controller.rb".freeze, "app/controllers/admin/textfilters_controller.rb".freeze, "app/controllers/admin/themes_controller.rb".freeze, "app/controllers/admin/users_controller.rb".freeze, "app/controllers/articles_controller.rb".freeze, "app/controllers/authors_controller.rb".freeze, "app/controllers/base_controller.rb".freeze, "app/controllers/comments_controller.rb".freeze, "app/controllers/concerns/.keep".freeze, "app/controllers/content_controller.rb".freeze, "app/controllers/feedback_controller.rb".freeze, "app/controllers/notes_controller.rb".freeze, "app/controllers/setup_controller.rb".freeze, "app/controllers/tags_controller.rb".freeze, "app/controllers/text_controller.rb".freeze, "app/controllers/textfilter_controller.rb".freeze, "app/controllers/theme_controller.rb".freeze, "app/controllers/trackbacks_controller.rb".freeze, "app/controllers/xml_controller.rb".freeze, "app/helpers/.keep".freeze, "app/helpers/admin/base_helper.rb".freeze, "app/helpers/admin/feedback_helper.rb".freeze, "app/helpers/articles_helper.rb".freeze, "app/helpers/authors_helper.rb".freeze, "app/helpers/base_helper.rb".freeze, "app/helpers/blog_helper.rb".freeze, "app/helpers/xml_helper.rb".freeze, "app/jobs/application_job.rb".freeze, "app/jobs/pinger_job.rb".freeze, "app/mailers/.keep".freeze, "app/mailers/notification_mailer.rb".freeze, "app/models/.keep".freeze, "app/models/ability.rb".freeze, "app/models/archives_sidebar.rb".freeze, "app/models/article.rb".freeze, "app/models/article/factory.rb".freeze, "app/models/article/states.rb".freeze, "app/models/blog.rb".freeze, "app/models/comment.rb".freeze, "app/models/concerns/.keep".freeze, "app/models/config_manager.rb".freeze, "app/models/content.rb".freeze, "app/models/content_base.rb".freeze, "app/models/feedback.rb".freeze, "app/models/feedback/states.rb".freeze, "app/models/meta_sidebar.rb".freeze, "app/models/note.rb".freeze, "app/models/page.rb".freeze, "app/models/page_sidebar.rb".freeze, "app/models/ping.rb".freeze, "app/models/post_type.rb".freeze, "app/models/redirect.rb".freeze, "app/models/redirection.rb".freeze, "app/models/resource.rb".freeze, "app/models/search_sidebar.rb".freeze, "app/models/sidebar.rb".freeze, "app/models/static_sidebar.rb".freeze, "app/models/tag.rb".freeze, "app/models/tag_sidebar.rb".freeze, "app/models/text_filter.rb".freeze, "app/models/trackback.rb".freeze, "app/models/trigger.rb".freeze, "app/models/user.rb".freeze, "app/services/migrator.rb".freeze, "app/services/title_builder.rb".freeze, "app/uploaders/resource_uploader.rb".freeze, "app/views/.keep".freeze, "app/views/accounts/confirm.html.erb".freeze, "app/views/admin/content/_article_list.html.erb".freeze, "app/views/admin/content/_form.html.erb".freeze, "app/views/admin/content/autosave.js.erb".freeze, "app/views/admin/content/edit.html.erb".freeze, "app/views/admin/content/index.html.erb".freeze, "app/views/admin/content/index.js.erb".freeze, "app/views/admin/content/new.html.erb".freeze, "app/views/admin/dashboard/_comment.html.erb".freeze, "app/views/admin/dashboard/_comments.html.erb".freeze, "app/views/admin/dashboard/_drafts.html.erb".freeze, "app/views/admin/dashboard/_inbound.html.erb".freeze, "app/views/admin/dashboard/_overview.html.erb".freeze, "app/views/admin/dashboard/_welcome.html.erb".freeze, "app/views/admin/dashboard/index.html.erb".freeze, "app/views/admin/feedback/_button.html.erb".freeze, "app/views/admin/feedback/_feedback.html.erb".freeze, "app/views/admin/feedback/_ham.html.erb".freeze, "app/views/admin/feedback/_spam.html.erb".freeze, "app/views/admin/feedback/article.html.erb".freeze, "app/views/admin/feedback/edit.html.erb".freeze, "app/views/admin/feedback/ham.js".freeze, "app/views/admin/feedback/index.html.erb".freeze, "app/views/admin/feedback/spam.js".freeze, "app/views/admin/migrations/show.html.erb".freeze, "app/views/admin/notes/_form.html.erb".freeze, "app/views/admin/notes/_header.html.erb".freeze, "app/views/admin/notes/_list.html.erb".freeze, "app/views/admin/notes/_note.html.erb".freeze, "app/views/admin/notes/edit.html.erb".freeze, "app/views/admin/notes/index.html.erb".freeze, "app/views/admin/notes/show.html.erb".freeze, "app/views/admin/pages/_form.html.erb".freeze, "app/views/admin/pages/_pages.html.erb".freeze, "app/views/admin/pages/edit.html.erb".freeze, "app/views/admin/pages/index.html.erb".freeze, "app/views/admin/pages/new.html.erb".freeze, "app/views/admin/post_types/_index_and_form.html.erb".freeze, "app/views/admin/post_types/edit.html.erb".freeze, "app/views/admin/post_types/index.html.erb".freeze, "app/views/admin/profiles/index.html.erb".freeze, "app/views/admin/redirects/_index_and_form.html.erb".freeze, "app/views/admin/redirects/edit.html.erb".freeze, "app/views/admin/redirects/index.html.erb".freeze, "app/views/admin/resources/index.html.erb".freeze, "app/views/admin/seo/_general.html.erb".freeze, "app/views/admin/seo/_permalinks.html.erb".freeze, "app/views/admin/seo/_titles.html.erb".freeze, "app/views/admin/seo/show.html.erb".freeze, "app/views/admin/settings/display.html.erb".freeze, "app/views/admin/settings/feedback.html.erb".freeze, "app/views/admin/settings/index.html.erb".freeze, "app/views/admin/settings/write.html.erb".freeze, "app/views/admin/shared/_edit.html.erb".freeze, "app/views/admin/shared/_menu.html.erb".freeze, "app/views/admin/shared/_twitter_alert.html.erb".freeze, "app/views/admin/sidebar/_available.html.erb".freeze, "app/views/admin/sidebar/_available.json.erb".freeze, "app/views/admin/sidebar/_config.html.erb".freeze, "app/views/admin/sidebar/_target.html.erb".freeze, "app/views/admin/sidebar/_target_sidebar.html.erb".freeze, "app/views/admin/sidebar/destroy.js.erb".freeze, "app/views/admin/sidebar/index.html.erb".freeze, "app/views/admin/sidebar/sortable.js.erb".freeze, "app/views/admin/sidebar/update.js.erb".freeze, "app/views/admin/tags/_index_and_form.html.erb".freeze, "app/views/admin/tags/edit.html.erb".freeze, "app/views/admin/tags/index.html.erb".freeze, "app/views/admin/themes/index.html.erb".freeze, "app/views/admin/users/_form.html.erb".freeze, "app/views/admin/users/edit.html.erb".freeze, "app/views/admin/users/index.html.erb".freeze, "app/views/admin/users/new.html.erb".freeze, "app/views/archives_sidebar/_content.html.erb".freeze, "app/views/articles/_article.html.erb".freeze, "app/views/articles/_article_collection.html.erb".freeze, "app/views/articles/_article_content.html.erb".freeze, "app/views/articles/_article_excerpt.html.erb".freeze, "app/views/articles/_article_links.html.erb".freeze, "app/views/articles/_comment.html.erb".freeze, "app/views/articles/_comment_errors.html.erb".freeze, "app/views/articles/_comment_form.html.erb".freeze, "app/views/articles/_comment_list.html.erb".freeze, "app/views/articles/_comment_preview.html.erb".freeze, "app/views/articles/_full_article_content.html.erb".freeze, "app/views/articles/_password_form.html.erb".freeze, "app/views/articles/_protected_article_content.html.erb".freeze, "app/views/articles/_trackback.html.erb".freeze, "app/views/articles/archives.html.erb".freeze, "app/views/articles/comment.js.erb".freeze, "app/views/articles/comment_failed.js.erb".freeze, "app/views/articles/error.html.erb".freeze, "app/views/articles/feedback_atom_feed.atom.builder".freeze, "app/views/articles/feedback_rss_feed.rss.builder".freeze, "app/views/articles/index.html.erb".freeze, "app/views/articles/index_atom_feed.atom.builder".freeze, "app/views/articles/index_rss_feed.rss.builder".freeze, "app/views/articles/live_search.html.erb".freeze, "app/views/articles/read.html.erb".freeze, "app/views/articles/search.html.erb".freeze, "app/views/articles/trackback.xml.builder".freeze, "app/views/articles/view_page.html.erb".freeze, "app/views/authors/show.html.erb".freeze, "app/views/authors/show_atom_feed.atom.builder".freeze, "app/views/authors/show_rss_feed.rss.builder".freeze, "app/views/comments/_comment.html.erb".freeze, "app/views/comments/index.html.erb".freeze, "app/views/comments/index_atom_feed.atom.builder".freeze, "app/views/comments/index_rss_feed.rss.builder".freeze, "app/views/comments/preview.html.erb".freeze, "app/views/comments/preview.js.erb".freeze, "app/views/devise/mailer/reset_password_instructions.html.erb".freeze, "app/views/devise/passwords/edit.html.erb".freeze, "app/views/devise/passwords/new.html.erb".freeze, "app/views/devise/registrations/new.html.erb".freeze, "app/views/devise/sessions/new.html.erb".freeze, "app/views/devise/shared/_links.html.erb".freeze, "app/views/errors/404.html.erb".freeze, "app/views/layouts/accounts.html.erb".freeze, "app/views/layouts/administration.html.erb".freeze, "app/views/layouts/default.html.erb".freeze, "app/views/layouts/editor.html.erb".freeze, "app/views/meta_sidebar/_content.html.erb".freeze, "app/views/notes/_note.html.erb".freeze, "app/views/notes/error.html.erb".freeze, "app/views/notes/index.html.erb".freeze, "app/views/notes/show.html.erb".freeze, "app/views/notes/show_in_reply.html.erb".freeze, "app/views/notification_mailer/_mail_footer.html.erb".freeze, "app/views/notification_mailer/_mail_header.html.erb".freeze, "app/views/notification_mailer/article.html.erb".freeze, "app/views/notification_mailer/comment.html.erb".freeze, "app/views/notification_mailer/notif_user.html.erb".freeze, "app/views/page_sidebar/_content.html.erb".freeze, "app/views/search_sidebar/_content.html.erb".freeze, "app/views/settings/done.html.erb".freeze, "app/views/settings/install.html.erb".freeze, "app/views/setup/index.html.erb".freeze, "app/views/shared/_atom_header.atom.builder".freeze, "app/views/shared/_atom_item_article.atom.builder".freeze, "app/views/shared/_atom_item_comment.atom.builder".freeze, "app/views/shared/_atom_item_trackback.atom.builder".freeze, "app/views/shared/_flash.erb".freeze, "app/views/shared/_page_header.html.erb".freeze, "app/views/shared/_rss_item_article.rss.builder".freeze, "app/views/shared/_rss_item_comment.rss.builder".freeze, "app/views/shared/_rss_item_trackback.rss.builder".freeze, "app/views/sidebar/_row.html.erb".freeze, "app/views/sidebar/_sidebar.html.erb".freeze, "app/views/sidebar/display_plugins.html.erb".freeze, "app/views/sidebar/show.html.erb".freeze, "app/views/static_sidebar/_content.html.erb".freeze, "app/views/tag_sidebar/_content.html.erb".freeze, "app/views/tags/index.html.erb".freeze, "app/views/tags/show.html.erb".freeze, "app/views/theme/static_view_test.html.erb".freeze, "app/views/trackbacks/index_atom_feed.atom.builder".freeze, "app/views/trackbacks/index_rss_feed.rss.builder".freeze, "app/views/trackbacks/trackback.xml.builder".freeze, "app/views/xml/_googlesitemap_item_article.googlesitemap.builder".freeze, "app/views/xml/_googlesitemap_item_category.googlesitemap.builder".freeze, "app/views/xml/_googlesitemap_item_page.googlesitemap.builder".freeze, "app/views/xml/_googlesitemap_item_tag.googlesitemap.builder".freeze, "app/views/xml/sitemap.googlesitemap.builder".freeze, "config/i18n-tasks.yml".freeze, "config/initializers/devise.rb".freeze, "config/initializers/mime_types.rb".freeze, "config/locales/da.yml".freeze, "config/locales/de.yml".freeze, "config/locales/en.yml".freeze, "config/locales/es-MX.yml".freeze, "config/locales/fr.yml".freeze, "config/locales/he.yml".freeze, "config/locales/it.yml".freeze, "config/locales/ja.yml".freeze, "config/locales/lt.yml".freeze, "config/locales/nb-NO.yml".freeze, "config/locales/nl.yml".freeze, "config/locales/pl.yml".freeze, "config/locales/pt-BR.yml".freeze, "config/locales/ro.yml".freeze, "config/locales/ru.yml".freeze, "config/locales/sidebars.da.yml".freeze, "config/locales/sidebars.de.yml".freeze, "config/locales/sidebars.en.yml".freeze, "config/locales/sidebars.es-MX.yml".freeze, "config/locales/sidebars.fr.yml".freeze, "config/locales/sidebars.he.yml".freeze, "config/locales/sidebars.it.yml".freeze, "config/locales/sidebars.ja.yml".freeze, "config/locales/sidebars.lt.yml".freeze, "config/locales/sidebars.nb-NO.yml".freeze, "config/locales/sidebars.nl.yml".freeze, "config/locales/sidebars.pl.yml".freeze, "config/locales/sidebars.pt-BR.yml".freeze, "config/locales/sidebars.ro.yml".freeze, "config/locales/sidebars.ru.yml".freeze, "config/locales/sidebars.zh-CN.yml".freeze, "config/locales/sidebars.zh-TW.yml".freeze, "config/locales/zh-CN.yml".freeze, "config/locales/zh-TW.yml".freeze, "config/routes.rb".freeze, "db/migrate/113_initial_schema.rb".freeze, "db/migrate/114_fixes_buggy_articles_and_notes.rb".freeze, "db/migrate/115_drops_categories_for_tags.rb".freeze, "db/migrate/20150207131657_add_missing_indexes.rb".freeze, "db/migrate/20150807134129_simplify_redirect_relations.rb".freeze, "db/migrate/20150808052637_add_blog_ids.rb".freeze, "db/migrate/20150808191127_add_blog_id_to_redirects.rb".freeze, "db/migrate/20150810094754_add_blog_id_to_tags.rb".freeze, "db/migrate/20160108111120_add_devise_to_users.rb".freeze, "db/migrate/20160108184201_move_last_connection_to_last_sign_in_at.rb".freeze, "db/migrate/20160110094906_remove_profiles_rights.rb".freeze, "db/migrate/20160605103918_replace_profile_id_with_string.rb".freeze, "db/migrate/20160605154632_remove_profiles.rb".freeze, "db/migrate/20160701061851_demand_blog_id_on_contents.rb".freeze, "db/migrate/20160701062604_add_blog_id_to_resources.rb".freeze, "db/seeds.rb".freeze, "lib/email_notify.rb".freeze, "lib/format.rb".freeze, "lib/publify_core.rb".freeze, "lib/publify_core/engine.rb".freeze, "lib/publify_core/lang.rb".freeze, "lib/publify_core/version.rb".freeze, "lib/publify_guid.rb".freeze, "lib/publify_plugins.rb".freeze, "lib/publify_textfilter_markdown.rb".freeze, "lib/publify_textfilter_none.rb".freeze, "lib/publify_textfilter_smartypants.rb".freeze, "lib/publify_textfilter_textile.rb".freeze, "lib/publify_textfilter_twitterfilter.rb".freeze, "lib/publify_time.rb".freeze, "lib/sidebar_field.rb".freeze, "lib/sidebar_registry.rb".freeze, "lib/spam_protection.rb".freeze, "lib/stateful.rb".freeze, "lib/tasks/publify_core_tasks.rake".freeze, "lib/text_filter_plugin.rb".freeze, "lib/theme.rb".freeze, "lib/transforms.rb".freeze, "publify_core.gemspec".freeze, "themes/plain/about.markdown".freeze, "themes/plain/preview.png".freeze, "themes/plain/stylesheets/theme.css".freeze]
  s.homepage = "https://publify.co".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Core engine for the Publify blogging system.".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, ["~> 5.0.0"])
      s.add_runtime_dependency(%q<RedCloth>.freeze, ["~> 4.3.2"])
      s.add_runtime_dependency(%q<akismet>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<bluecloth>.freeze, ["~> 2.1"])
      s.add_runtime_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.6"])
      s.add_runtime_dependency(%q<cancancan>.freeze, ["~> 1.14"])
      s.add_runtime_dependency(%q<carrierwave>.freeze, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<devise>.freeze, ["~> 4.2.0"])
      s.add_runtime_dependency(%q<devise-i18n>.freeze, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<dynamic_form>.freeze, ["~> 1.1.4"])
      s.add_runtime_dependency(%q<feedjira>.freeze, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<fog-aws>.freeze, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, ["~> 4.3.1"])
      s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
      s.add_runtime_dependency(%q<kaminari>.freeze, ["~> 1.0.1"])
      s.add_runtime_dependency(%q<mini_magick>.freeze, ["~> 4.2"])
      s.add_runtime_dependency(%q<rails-timeago>.freeze, ["~> 2.0"])
      s.add_runtime_dependency(%q<rails_autolink>.freeze, ["~> 1.1.0"])
      s.add_runtime_dependency(%q<recaptcha>.freeze, ["~> 4.1.0"])
      s.add_runtime_dependency(%q<rubypants>.freeze, ["~> 0.6.0"])
      s.add_runtime_dependency(%q<mimemagic>.freeze, ["~> 0.3.2"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, ["~> 5.0"])
      s.add_runtime_dependency(%q<twitter>.freeze, ["~> 6.1.0"])
      s.add_runtime_dependency(%q<uuidtools>.freeze, ["~> 2.1.1"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.5.2"])
      s.add_development_dependency(%q<capybara>.freeze, ["~> 2.7"])
      s.add_development_dependency(%q<factory_girl_rails>.freeze, ["~> 4.8.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.48.1"])
      s.add_development_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.1"])
      s.add_development_dependency(%q<rails-controller-testing>.freeze, ["~> 1.0.1"])
      s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0.1"])
    else
      s.add_dependency(%q<rails>.freeze, ["~> 5.0.0"])
      s.add_dependency(%q<RedCloth>.freeze, ["~> 4.3.2"])
      s.add_dependency(%q<akismet>.freeze, ["~> 2.0"])
      s.add_dependency(%q<bluecloth>.freeze, ["~> 2.1"])
      s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.6"])
      s.add_dependency(%q<cancancan>.freeze, ["~> 1.14"])
      s.add_dependency(%q<carrierwave>.freeze, ["~> 1.0.0"])
      s.add_dependency(%q<devise>.freeze, ["~> 4.2.0"])
      s.add_dependency(%q<devise-i18n>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<dynamic_form>.freeze, ["~> 1.1.4"])
      s.add_dependency(%q<feedjira>.freeze, ["~> 2.1.0"])
      s.add_dependency(%q<fog-aws>.freeze, ["~> 1.3.0"])
      s.add_dependency(%q<jquery-rails>.freeze, ["~> 4.3.1"])
      s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
      s.add_dependency(%q<kaminari>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<mini_magick>.freeze, ["~> 4.2"])
      s.add_dependency(%q<rails-timeago>.freeze, ["~> 2.0"])
      s.add_dependency(%q<rails_autolink>.freeze, ["~> 1.1.0"])
      s.add_dependency(%q<recaptcha>.freeze, ["~> 4.1.0"])
      s.add_dependency(%q<rubypants>.freeze, ["~> 0.6.0"])
      s.add_dependency(%q<mimemagic>.freeze, ["~> 0.3.2"])
      s.add_dependency(%q<sass-rails>.freeze, ["~> 5.0"])
      s.add_dependency(%q<twitter>.freeze, ["~> 6.1.0"])
      s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1.1"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.5.2"])
      s.add_dependency(%q<capybara>.freeze, ["~> 2.7"])
      s.add_dependency(%q<factory_girl_rails>.freeze, ["~> 4.8.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.48.1"])
      s.add_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.1"])
      s.add_dependency(%q<rails-controller-testing>.freeze, ["~> 1.0.1"])
      s.add_dependency(%q<webmock>.freeze, ["~> 3.0.1"])
    end
  else
    s.add_dependency(%q<rails>.freeze, ["~> 5.0.0"])
    s.add_dependency(%q<RedCloth>.freeze, ["~> 4.3.2"])
    s.add_dependency(%q<akismet>.freeze, ["~> 2.0"])
    s.add_dependency(%q<bluecloth>.freeze, ["~> 2.1"])
    s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3.6"])
    s.add_dependency(%q<cancancan>.freeze, ["~> 1.14"])
    s.add_dependency(%q<carrierwave>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<devise>.freeze, ["~> 4.2.0"])
    s.add_dependency(%q<devise-i18n>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<dynamic_form>.freeze, ["~> 1.1.4"])
    s.add_dependency(%q<feedjira>.freeze, ["~> 2.1.0"])
    s.add_dependency(%q<fog-aws>.freeze, ["~> 1.3.0"])
    s.add_dependency(%q<jquery-rails>.freeze, ["~> 4.3.1"])
    s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
    s.add_dependency(%q<kaminari>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<mini_magick>.freeze, ["~> 4.2"])
    s.add_dependency(%q<rails-timeago>.freeze, ["~> 2.0"])
    s.add_dependency(%q<rails_autolink>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<recaptcha>.freeze, ["~> 4.1.0"])
    s.add_dependency(%q<rubypants>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<mimemagic>.freeze, ["~> 0.3.2"])
    s.add_dependency(%q<sass-rails>.freeze, ["~> 5.0"])
    s.add_dependency(%q<twitter>.freeze, ["~> 6.1.0"])
    s.add_dependency(%q<uuidtools>.freeze, ["~> 2.1.1"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.5.2"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.7"])
    s.add_dependency(%q<factory_girl_rails>.freeze, ["~> 4.8.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.48.1"])
    s.add_dependency(%q<i18n-tasks>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<rails-controller-testing>.freeze, ["~> 1.0.1"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0.1"])
  end
end
