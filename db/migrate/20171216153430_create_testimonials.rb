class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.column :testimony, :varchar
    end
  end
end
