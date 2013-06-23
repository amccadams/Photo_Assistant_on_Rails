class Equipment < ActiveRecord::Base
 
  attr_accessible :name, :serial, :equipment_category, :make, :model, :purchase_date, :description
  has_many :shoots, :through => :equipment_lists
  has_many :equipment_lists
end
