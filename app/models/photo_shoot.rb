class PhotoShoot < ActiveRecord::Base
  self.table_name = :photo_shoots
  attr_accessible :name, :address, :city, :state, :zip, :phone, :email, :date, :time
end
