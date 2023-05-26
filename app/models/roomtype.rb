class Roomtype < ApplicationRecord
  belongs_to :room_class
  has_many :bookings
  validates_presence_of :name, :room_class, :room_size, :price_per_night
end
