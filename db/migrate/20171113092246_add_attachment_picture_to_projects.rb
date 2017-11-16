class AddAttachmentPictureToProjects < ActiveRecord::Migration[5.1]
  def self.up
    change_table :projects do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :projects, :picture
  end
end
