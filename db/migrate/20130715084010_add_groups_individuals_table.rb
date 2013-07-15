class AddGroupsIndividualsTable < ActiveRecord::Migration
  def up
  	create_table :groups_individuals, :id => false do |t|
	  t.integer :group_id
	  t.integer :individual_id
	end
  end

  def down
    drop_table :groups_individuals
  end
end
