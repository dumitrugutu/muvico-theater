class PurchasesController < ApplicationController
  def index
    @purchases = Purchase.all
  end

  def new
    @movie = Movie.find(params[:movie_id])
    @purchase = Purchase.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @purchase = Purchase.new(purchase_params)
    @purchase.movie_id = @movie.id
    if @purchase.save
      PurchaseMailer.notify_customer(@purchase).deliver_later
      flash[:notice] = "You have purchased a ticket to #{@movie.title} successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def purchase_params
      params.require(:purchase).permit(:name, :email)
    end
end
