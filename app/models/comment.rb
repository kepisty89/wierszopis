class Comment < ActiveRecord::Base
  # model dependencies
  belongs_to :poem

  # validators
  validates :name, :presence => true
  validates :email, :presence => true
  validates :body, :presence => true
  
  scope :recent, lambda { |term| order("comments.created_at DESC").limit("#{term}") }
end
