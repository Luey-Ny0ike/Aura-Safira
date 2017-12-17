class AddNameAndPositionToTestimonials < ActiveRecord::Migration[5.1]
  def change
    add_column :testimonials, :name, :string
    add_column :testimonials, :position, :string
  end
end
