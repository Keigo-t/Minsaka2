class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.timestamps

      #追加のカラム
      t.text :comment, null: false
    end
  end
end
