class ContactU < ApplicationRecord
    validates_presence_of :via, :information
end
