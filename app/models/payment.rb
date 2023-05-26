class Payment < ApplicationRecord
  belongs_to :booking
  belongs_to :payment_method
  validates_presence_of :booking, :paid, :payment_method, :pay_time
end
