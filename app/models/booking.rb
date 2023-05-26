class Booking < ApplicationRecord
  belongs_to :customer
  belongs_to :room_type
  has_many :payments
  validates_presence_of :booking_no, :customer, :check_in_date, :check_out_date, :room_type, :room_number, :num_of_nights, :num_of_adults, :num_of_children
  validates_uniqueness_of :booking_no
  validates_numericality_of :booking_no, :room_number, :num_of_nights, :num_of_adults, :num_of_children
  validate :valid_num_of_nights
  validate :valid_num_of_adults
  validate :valid_num_of_children

  def valid_num_of_nights
    errors.add(:num_of_nights, "Can't be negative!") if num_of_nights < 0
  end

  def valid_num_of_adults
    errors.add(:num_of_adults, "Can't be negative!") if num_of_adults < 0
  end

  def valid_num_of_children
    errors.add(:num_of_children, "Can't be negative!") if num_of_children < 0
  end

end
