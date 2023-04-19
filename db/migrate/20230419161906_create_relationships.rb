class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|

      t.timestamps

      #追加のカラム
      t.integer :follower_id, null: false
      t.integer :followed_id, null: false
    end
  end
end
