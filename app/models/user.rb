class User < ApplicationRecord
  has_one :profile, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum admin: {member: 0, admin: 1}
end
