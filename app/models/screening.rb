class Screening < ApplicationRecord
  validates_presence_of :movie_id, :auditorium_id, :start_time

  belongs_to :movie
  belongs_to :auditorium
end
