class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
	  t.string :userName
      t.timestamps
    end
  end
end
