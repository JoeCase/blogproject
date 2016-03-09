class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates :username, :email, presence: true, uniqueness: true
  validates :password_hash, presence: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'}
end
