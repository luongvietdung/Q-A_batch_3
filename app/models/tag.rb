class Tag < ApplicationRecord
  belongs_to :user
  has_many :post_has_tags, dependent: :destroy
  has_many :posts, through: :post_has_tags
end
