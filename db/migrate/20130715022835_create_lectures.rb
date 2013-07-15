class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
	  t.integer :day
	  t.float :period
	  t.float :duration
	  t.string :location
      t.timestamps
    end
  end
end
