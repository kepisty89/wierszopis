class Poem < ActiveRecord::Base
  acts_as_taggable_on :tags
  has_attached_file :mp3
  has_attached_file :mp3, :path => ":rails_root/public/audios/:id/:basename.:extension"

  # paginacja
  cattr_reader :per_page
  @@per_page = 5

  # model dependencies
  belongs_to :user
  belongs_to :chapter
  has_many :comments, -> { order('created_at DESC') }, dependent: :destroy

  # validators
  validates :title, :presence => true
  validates :body, :presence => true

  scope :recent, lambda { |term| order("poems.created_at DESC").limit("#{term}") }

  def owned_by?(current_user)
    return false unless current_user.is_a? User
    current_user.id == self.user_id
  end

  def author
    usr = self.user
    return usr.profile.full_name
  end
end
