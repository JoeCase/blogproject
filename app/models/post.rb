class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :commenters, through: :comments, source: :user

  has_and_belongs_to_many :categories
  has_and_belongs_to_many :tags


  validates :user_id, presence: true
  validates :body, presence: true
end
