class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :about
      t.string :location
      t.string :website
      t.datetime :birthday
      t.string :user_name

      t.timestamps
    end
  end
end
