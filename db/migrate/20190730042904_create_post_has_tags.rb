class CreatePostHasTags < ActiveRecord::Migration[5.1]
  def change
    create_table :post_has_tags do |t|
      t.integer :post_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
