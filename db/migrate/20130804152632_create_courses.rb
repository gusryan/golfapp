class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :par
      t.text :location
      t.string :tees
      t.integer :slope
      t.integer :rating

      t.timestamps
    end
  end
end
