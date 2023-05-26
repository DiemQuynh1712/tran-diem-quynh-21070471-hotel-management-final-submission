class RoomClass < ApplicationRecord
    has_many :roomtypes
    validates_presence_of :room_class
end
