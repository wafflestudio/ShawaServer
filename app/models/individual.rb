class Individual < ActiveRecord::Base
  attr_accessible :userName
  has_many :courses
  has_and_belongs_to_many :groups
end
