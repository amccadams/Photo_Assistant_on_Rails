class CreateEquipmentLists < ActiveRecord::Migration
	def change
		create_table :equipment_lists do |t|
			t.integer :equipment_id
			t.integer :photo_shoot_id
		end
	end
end