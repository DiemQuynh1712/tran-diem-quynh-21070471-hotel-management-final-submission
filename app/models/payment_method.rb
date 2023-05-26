class PaymentMethod < ApplicationRecord
    has_many :payments
    validates_presence_of :payment_method
end
