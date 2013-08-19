class Group < ActiveRecord::Base
  attr_accessible :groupName, :groupType
  has_and_belongs_to_many :individuals
  has_and_belongs_to_many :users
end
