class CreatePhotoShoots < ActiveRecord::Migration
  def change
    create_table :photo_shoots do |t|
      t.string :name

      t.timestamps
    end
  end
end
