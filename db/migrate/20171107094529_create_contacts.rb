class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.column :name, :varchar
      t.column :email, :varchar
      t.column :subject, :varchar
      t.column :message, :varchar

      t.timestamps
    end
  end
end
