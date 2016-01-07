class BarbersController < ApplicationController
  def index
    @barbers = Barber.all
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def new
  end

  def create
    @barber = Barber.new(barber_params)
    @barber.save
    redirect_to @barber
  end

  private
    def barber_params
      params.require(:barber).permit(:username, :name, :personal_bio);
    end
end
