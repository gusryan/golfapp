class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
drop_table :matches
      t.string :name
      t.string :golfer1_name
      t.string :golfer2_name
      t.string :course_name
      t.integer :score
      t.string :winner
      t.references :course, index: true
      t.references :golfer, index: true

      t.timestamps
    end
  end
end
