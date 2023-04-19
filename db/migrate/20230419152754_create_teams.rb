class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|

      t.timestamps

      #追加カラム
      t.string :name, null: false
    end
  end
end
