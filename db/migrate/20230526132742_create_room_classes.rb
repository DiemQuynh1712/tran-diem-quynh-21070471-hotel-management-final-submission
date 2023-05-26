class CreateRoomClasses < ActiveRecord::Migration[7.0]
  def change
    create_table :room_classes do |t|
      t.string :room_class
      t.string :description

      t.timestamps
    end
  end
end
