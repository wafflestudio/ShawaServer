class Individual < ActiveRecord::Base
  attr_accessible :userName
  has_belongs_to_many :groups
end
