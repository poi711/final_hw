class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :post_title
      t.text :post_content
      
      t.string :image_url, default: ""

      t.timestamps null: false
    end
  end
end
