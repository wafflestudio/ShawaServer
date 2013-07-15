class Course < ActiveRecord::Base
  attr_accessible :courseName
  has_many :lectures
end
