class Auditorium < ApplicationRecord
  validates_presence_of :name, :seat_capacity
end
