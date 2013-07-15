class Lecture < ActiveRecord::Base
  attr_accessible :day, :period, :duration, :location
  belongs_to :course
end
