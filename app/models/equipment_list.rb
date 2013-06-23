class EquipmentList < ActiveRecord::Base
  attr_accessible :equipment_id, :shoot_id
  belongs_to :shoot
  belongs_to :equipment 
end