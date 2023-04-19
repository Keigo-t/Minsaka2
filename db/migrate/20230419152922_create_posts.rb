class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|

      t.timestamps

      #追加のカラム
      t.text :post, null: false
    end
  end
end
