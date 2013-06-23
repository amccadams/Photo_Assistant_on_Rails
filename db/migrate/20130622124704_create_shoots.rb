class CreateShoots < ActiveRecord::Migration
  def change
    create_table :shoots do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :date
      t.string :time
      t.text :description

      t.timestamps
    end
  end
end
