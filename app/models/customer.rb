class Customer < ApplicationRecord
    has_many :bookings
    has_many :reviews
    validates_presence_of :name, :date_of_birth, :phone_number, :email, :address, :postcode
    validates_uniqueness_of :phone_number, :email
    validate :past_event
    validate :at_least_18

    def past_event
        errors.add(:date_of_birth, "Can't be in the future!") if date_of_birth > Time.now
    end 

    def at_least_18
        errors.add(:date_of_birth, 'You must be 18 years or older!') if date_of_birth > 18.years.ago.to_date
    end
end
