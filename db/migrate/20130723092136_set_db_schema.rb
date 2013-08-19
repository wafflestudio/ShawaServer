class SetDbSchema < ActiveRecord::Migration
  def up
    create_table "courses", :force => true do |t|
    t.string   "courseName"
	t.integer  "individual_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "groupName"
    t.integer  "groupType"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups_individuals", :id => false, :force => true do |t|
    t.integer "group_id"
    t.integer "individual_id"
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
  end
end

