class ChangeColumnName < ActiveRecord::Migration
  def up
  	rename_column :users, :my_group_id, :my_individual_id
  end

  def down
  end
end
