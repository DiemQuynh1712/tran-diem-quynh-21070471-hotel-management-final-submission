class Review < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer, :star
end
