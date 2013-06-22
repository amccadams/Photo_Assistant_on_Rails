class CreateEquipments < ActiveRecord::Migration
	def change
		create_table :equipments do |t|
			t.string :name
			t.string :serial
			t.string :make
			t.string :model
			t.string :purchasedate
			t.text :description
			t.integer :type_id
		end
	end
end