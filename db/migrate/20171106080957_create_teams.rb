class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.column :postion, :varchar
      t.column :role, :varchar
      t.column :statement, :varchar

      t.timestamps
    end
  end
end
