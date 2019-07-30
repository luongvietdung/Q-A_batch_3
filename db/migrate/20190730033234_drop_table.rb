class DropTable < ActiveRecord::Migration[5.1]
  def self.up
  	drop_table :profiles
  end
end
