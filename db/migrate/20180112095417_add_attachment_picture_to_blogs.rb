class AddAttachmentPictureToBlogs < ActiveRecord::Migration[5.0]
  def self.up
    change_table :blogs do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :blogs, :picture
  end
end
