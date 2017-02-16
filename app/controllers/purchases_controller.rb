class PurchasesController < ApplicationController
  def new
    @movie = Movie.find(params[:movie_id])
    @purchase = Purchase.new
  end
end
