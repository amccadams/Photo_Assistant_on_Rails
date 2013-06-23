class Shoot < ActiveRecord::Base
  has_many :equipments, through: :equipment_lists 
  has_many :equipment_lists
  attr_accessible :address, :city, :date, :description, :email, :name, :phone, :state, :time, :zip
end
