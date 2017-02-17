class ScreeningsController < ApplicationController
  before_action :set_screening, only: [:new, :create]
  def index
    @screenings = Screening.all
  end

  def new
    @screening = Screening.new
  end

  def create
    @screening = Screening.new(screening_params)

    if @screening.save
      flash[:notice] = "You have created a new screening successfully!"
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def screening_params
      params.require(:screening).permit(:movie_id, :auditorium_id, :start_time)
    end

    def set_screening
      @movies = Movie.all
      @auditoria = Auditorium.all
    end
end
