class AddGroupIdToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :group_id, :int
  end
end
