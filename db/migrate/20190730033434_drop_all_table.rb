class DropAllTable < ActiveRecord::Migration[5.1]
  def self.up
  	drop_table :categories
  	drop_table :comments
  	drop_table :likes
  	drop_table :post_has_tags
  	drop_table :tags
  end
end
