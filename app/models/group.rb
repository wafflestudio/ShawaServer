class Group < ActiveRecord::Base
  attr_accessible :groupName, :groupType
  belongs_to :users
end
