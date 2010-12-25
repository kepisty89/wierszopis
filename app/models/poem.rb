class Poem < ActiveRecord::Base
  # model relations
  belongs_to :user
  belongs_to :chapter
  has_many :comments
end
