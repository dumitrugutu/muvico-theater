class Movie < ApplicationRecord
  validates_presence_of :title, :description, :start_time, :price

  has_many :purchases
  has_many :screenings
  has_many :auditoria

  def available_tickets
    seat_capacity = self.screenings.last.auditorium.seat_capacity
    sold_tickets = self.purchases.count
    seat_capacity - sold_tickets
  end
end
