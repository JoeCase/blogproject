class Tag < ActiveRecord::Base
  has_many :posts, through: :posts_tags

  validates :name, presence: true, uniqueness: true
end
