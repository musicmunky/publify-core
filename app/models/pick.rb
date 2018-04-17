class Pick < ActiveRecord::Base
  include PublifyGuid
  include ConfigManager

  validates :title, :author, presence: true

#  serialize :settings, Hash
#  setting :password, :string, ''

#  before_save :set_permalink
#  after_save :shorten_url

#  def set_permalink
#    self.name = title.to_permalink if name.blank?
#  end

  #content_fields :description

  def self.default_order
    'name ASC'
  end

  def self.search_with(search_hash)
    #super(search_hash).order('title ASC')
  end

  def permalink_url(anchor = nil, only_path = false)
    #blog.url_for(
    #  controller: '/articles',
    #  action: 'view_page',
    #  name: name,
    #  anchor: anchor,
    #  only_path: only_path
    #)
  end

  def short_url
    # Double check because of crappy data in my own old database
#    return unless published && redirect.present?
#    redirect.from_url
  end

end