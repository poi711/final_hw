class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      
      t.integer :post_id
      t.text :reply_content

      t.timestamps null: false
    end
  end
end
