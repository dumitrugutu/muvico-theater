class Movie < ApplicationRecord
  validates_presence_of :title, :description, :start_time, :price

  has_many :purchases
end
