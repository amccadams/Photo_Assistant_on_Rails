class CreateEquipments < ActiveRecord::Migration
	def change
		create_table :equipments do |t|
			t.string :name
			t.string :serial
			t.integer :type_id
		end
	end
end