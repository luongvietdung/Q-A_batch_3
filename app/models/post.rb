class Post < ApplicationRecord
  has_many :post_has_tags, dependent: :destroy
  has_many :tags, through: :post_has_tags
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  belongs_to :user
end
