class AddTeamidToPerson < ActiveRecord::Migration[5.1]
  def change
    add_column :people, :team_id, :integer
  end
end
