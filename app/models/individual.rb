class Individual < ActiveRecord::Base
  attr_accessible :userName
  has_many :courses
end
