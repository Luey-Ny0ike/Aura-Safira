class DropMultipleColumnsFromTeams < ActiveRecord::Migration[5.1]
  def change
    remove_column :teams, :postion
    remove_column :teams, :statement
    remove_column :teams, :role
  end
end
