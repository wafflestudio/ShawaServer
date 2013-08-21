class SetDatabase < ActiveRecord::Migration
  def up
  create_table "courses", :force => true do |t|
    t.string   "courseName"
    t.integer  "individual_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "groupName"
    t.integer  "groupType"
    t.string   "individual_ids"
	t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "individuals", :force => true do |t|
    t.string   "userName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lectures", :force => true do |t|
    t.string   "day"
    t.float    "period"
    t.float    "duration"
    t.string   "location"
    t.integer  "course_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "device_token"
    t.integer  "my_group_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end


  end

  def down
  end
end
