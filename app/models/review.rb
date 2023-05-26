class Review < ApplicationRecord
  belongs_to :customer
  validates_presence_of :customer, :star
  validates :star, numericality: { less_than_or_equal_to: 5, greater_than: 0,  only_integer: true }
end
