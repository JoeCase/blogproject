class Post < ActiveRecord::Base
  belongs_to :user

  has_many :comments
  has_many :categories, through: :categories_posts
  has_many :tags, through: :posts_tags
  has_many :commenters, through: :comments, source: :user

  validates :user_id, presence: true
  validates :body, presence: true
end
