class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :booking_no
      t.references :customer, null: false, foreign_key: true
      t.date :check_in_date
      t.date :check_out_date
      t.references :room_type, null: false, foreign_key: true
      t.integer :room_number
      t.integer :num_of_nights
      t.integer :num_of_adults
      t.integer :num_of_children
      t.string :required_services

      t.timestamps
    end
  end
end
