class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def all_orders
    @movie = Movie.find(params[:id])
    @purchases = @movie.purchases
  end

  def search
    @movie_query = params[:movie]
    @movie = Movie.find_by('title LIKE ?', "%#{@movie_query}%")

    render :search
  end

  # private
  #   def movie_params
  #     params.permit(:movie)
  #   end
end
