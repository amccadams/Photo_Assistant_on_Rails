class Equipment < ActiveRecord::Base
 
  validates_uniqueness_of :name, message: "must be unique"
  attr_accessible :name, :serial, :equipment_type_id
  has_many :photo_shoot
  has_one :equipment_type
end
