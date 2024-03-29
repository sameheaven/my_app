class User < ActiveRecord::Base
  attr_accessible :name, :email
  
  before_save { |user | user.email = user.email.downcase }
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[\w+\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
end
