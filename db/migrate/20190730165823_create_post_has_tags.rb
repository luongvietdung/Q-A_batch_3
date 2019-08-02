class CreatePostHasTags < ActiveRecord::Migration[5.1]
  def change
    create_table :post_has_tags do |t|
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
