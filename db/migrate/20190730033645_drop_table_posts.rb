class DropTablePosts < ActiveRecord::Migration[5.1]
  def self.up
  	drop_table :posts
  end
end
