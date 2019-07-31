class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :admin, default: 0
      t.string :reset_digest
      t.string :reset_sent_at

      t.timestamps
    end
  end
end
