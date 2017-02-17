class Auditorium < ApplicationRecord
  validates_presence_of :name, :seat_capacity

  has_many :screenings
end
