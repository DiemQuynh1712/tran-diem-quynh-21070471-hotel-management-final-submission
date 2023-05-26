class Payment < ApplicationRecord
  belongs_to :booking
  belongs_to :payment_method
end
