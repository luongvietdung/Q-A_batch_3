class Post < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :destroy
	has_many :likes, dependent: :destroy
	has_many :post_has_tags, dependent: :destroy
	has_many :tags, :through => :post_has_tags
end
