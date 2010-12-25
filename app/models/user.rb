class User < ActiveRecord::Base
  # model dependencies
  has_one :proile
  has_many :chapters
  has_many :poems
  has_many :comments
  has_many :replies, :through => :poems, :source => :comments
end
