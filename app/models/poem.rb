class Poem < ActiveRecord::Base
  acts_as_taggable_on :tags
  has_attached_file :mp3
  has_attached_file :mp3, :path => ":rails_root/public/audios/:id/:basename.:extension"

  # paginacja
  cattr_reader :per_page
  @@per_page = 5

  # model dependencies
  belongs_to :user, required: true
  belongs_to :chapter, required: true
  has_many :comments, -> { order('created_at DESC') }, dependent: :destroy

  # validators
  validates :title, :presence => true
  validates :body, :presence => true

  scope :recent, lambda { |term| order("poems.created_at DESC").limit("#{term}") }

  def owned_by?(current_user)
    return false if current_user.nil?
    current_user.id == user_id
  end

  def author
    user&.profile&.full_name || 'unknown'
  end
end
