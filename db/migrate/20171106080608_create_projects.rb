class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :title, :varchar
      t.column :description, :varchar
      t.column :status, :varchar
      t.column :skills, :varchar

      t.timestamps
    end
  end
end
