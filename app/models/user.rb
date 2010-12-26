require 'digest'

class User < ActiveRecord::Base
  attr_accessor :password # creates read/write methods (accessors)
  # for non existing active-record position
  
  # model dependencies
  has_one :proile, :dependent => :destroy
  has_many :chapters, :order => 'name ASC', :dependent => :destroy
  has_many :poems, :order => 'created_at DESC, composed_at DESC, title ASC', :dependent => :destroy
  has_many :comments, :order => 'created_at DESC', :dependent => :nullify
  has_many :replies, :through => :poems, :source => :comments, :order => 'created_at DESC'

  # validators
  validates :email, :presence => true, :uniqueness => true, :format => { :with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i }
  validates :password, :confirmation => true, :length => { :within => 8..64 }, :presence => true, :if => :password_required?

  # callbacks
  before_save :encrypt_new_password

  # methods
  def self.authenticate(login, password)
    user = find_by_email(login)
    if user
      return user if user.authenticated?(password)
    else
      user = find_by_nickname(login)
      return user if user && user.authenticated?(password)
    end
  end
  
  def authenticated?(password)
    self.hashed_password == encrypt(password)
  end
  
  protected
  def encrypt_new_password
    return if password.blank?
    self.hashed_password = encrypt(password)
  end
  
  def password_required?
    hashed_password.blank? || password.present?
  end
  
  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end
end
