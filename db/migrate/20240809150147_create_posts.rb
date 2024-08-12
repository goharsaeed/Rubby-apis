class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title, null: false
      t.text :content, null: false

       t.timestamps
    end
    # here is rubb

    add_index :posts, :user_id    
  end
end
