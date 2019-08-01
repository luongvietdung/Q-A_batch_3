class AddRememberDigestToUsers < ActiveRecord::Migration[5.1]
  def self.up
    add_column :users, :remember_digest, :string
  end

  def self.down
    remove_column :users, :remember_digest
  end
end
