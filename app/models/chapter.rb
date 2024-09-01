class Chapter < ActiveRecord::Base
  # model dependencies
  belongs_to :user
  has_many :poems, -> { order('created_at DESC, composed_at DESC, title ASC') }, dependent: :nullify

  # validators

  validates :name, presence: true

end
