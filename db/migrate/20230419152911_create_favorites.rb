class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|

      t.timestamps

      #追加のカラム
      t.bigint :user_id, null: false, foreign_key: true
      t.bigint :post_id, null: false, foreign_key: true
    end
  end
end
