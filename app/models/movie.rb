class Movie < ApplicationRecord
  has_many :purchases

  validates_presence_of :title, :description, :start_time, :price
end
