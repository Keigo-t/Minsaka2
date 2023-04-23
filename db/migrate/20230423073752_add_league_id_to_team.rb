class AddLeagueIdToTeam < ActiveRecord::Migration[6.1]
  def change
    add_column :teams, :league_id, :integer
  end
end
