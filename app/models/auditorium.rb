class Auditorium < ApplicationRecord
  validates_presence_of :name, :seat_capacity

  has_many :screenings
  has_many :movies, through: :screenings
end
