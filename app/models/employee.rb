class Employee < ApplicationRecord
    validates_presence_of :name, :position, :contact
end
