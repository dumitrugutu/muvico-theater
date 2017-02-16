class AuditoriaController < ApplicationController
  def new
    @auditorium = Auditorium.new
  end

  def create
    @auditorium = Auditorium.new(auditorium_params)

    if @auditorium.save
      flash[:notice] = "You have created the #{@auditorium.name} auditorium successfully"
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def auditorium_params
      params.require(:auditorium).permit(:name, :seat_capacity)
    end
end
