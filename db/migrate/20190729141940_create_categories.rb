class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :categorie_name

      t.timestamps
    end
  end
end
