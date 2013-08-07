class CreateGolfers < ActiveRecord::Migration
  def change
    drop_table :golfers 
    create_table :golfers do |t|
      t.string :name
      t.integer :handicap

      t.timestamps
    end
  end
end
