class AddUserIdToTestimonials < ActiveRecord::Migration[5.1]
  def change
    add_column :testimonials, :user_id, :integer
  end
end
