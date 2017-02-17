class Screening < ApplicationRecord

  validates_presence_of :movie_id, :auditorium_id, :start_time
  validate :screening_exists?

  belongs_to :movie
  belongs_to :auditorium

  private
    def screening_exists?
      movie_id = self.movie_id
      auditorium_id = self.auditorium_id
      movie_name = self.movie.title
      auditorium_name = self.auditorium.name
      if Screening.exists?(movie_id: movie_id, auditorium_id: auditorium_id)
        self.errors[:base] << "Sorry, it seems like #{movie_name} is already playing in the auditorium #{auditorium_name}"
      end
    end
end
