class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :genre_id,      null: false
      t.references :user,       null: false, foreign_key: true
      t.string :title,          null: false
      t.text :detail,           null: false
      t.date :date,             null: false

      t.timestamps
    end
  end
end
