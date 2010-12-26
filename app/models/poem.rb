class Poem < ActiveRecord::Base
  # model dependencies
  belongs_to :user
  belongs_to :chapter
  has_many :comments, :order => 'created_at DESC', :dependent => :destroy

  # validators
  validates :title, :presence => true
  validates :body, :presence => true
  
  scope :recent, lambda { |term| order("poems.created_at DESC").limit("#{term}") }
                                  
end
