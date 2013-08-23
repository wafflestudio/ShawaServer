class Course < ActiveRecord::Base
  attr_accessible :courseName
  has_many :lectures, :dependent => :destroy
  belongs_to :individuals
  
end
