class CreateMatches < ActiveRecord::Migration
  def change
    drop_table :matches
    create_table :matches do |t|
      t.string :name
      t.string :golfer1
      t.string :golfer2
      t.string :course
      t.integer :score
      t.string :winner

      t.timestamps
    end
  end
end
