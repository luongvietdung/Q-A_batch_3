class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, foreign_key: true
      t.string :about
      t.string :location
      t.string :website
      t.string :birthday
      t.string :user_name
      t.string :image_profile

      t.timestamps
    end
  end
end
