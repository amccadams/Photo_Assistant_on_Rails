class Shoot < ActiveRecord::Base
  has_many :equipment
  attr_accessible :address, :city, :date, :description, :email, :name, :phone, :state, :time, :zip
end
