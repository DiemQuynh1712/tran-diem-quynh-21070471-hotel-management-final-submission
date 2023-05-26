class CreateRoomtypes < ActiveRecord::Migration[7.0]
  def change
    create_table :roomtypes do |t|
      t.string :name
      t.references :room_class, null: false, foreign_key: true
      t.string :description
      t.integer :room_size
      t.float :price_per_night

      t.timestamps
    end
  end
end
