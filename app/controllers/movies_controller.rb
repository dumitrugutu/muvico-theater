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
end
