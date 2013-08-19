class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :device_token
	  t.integer :my_group_id

      t.timestamps
    end

	create_table :groups_users do |t|
	  t.belongs_to :user
	  t.belongs_to :group
	end
  end
end
