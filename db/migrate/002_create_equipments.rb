class CreateEquipments < ActiveRecord::Migration
	def change
		create_table :equipments do |t|
			t.string :name
			t.string :serial
			t.string :make
			t.string :model
			t.string :purchase_date
			t.text :description
			t.string :equipment_category
		end
	end
end