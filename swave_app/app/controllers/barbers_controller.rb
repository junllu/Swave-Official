class BarbersController < ApplicationController
  def index
    @barbers = Barber.all
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def new
    @barber = Barber.new
  end

  def edit
    @barber = Barber.find(params[:id])
  end

  def create
    @barber = Barber.new(barber_params)

    if @barber.save
      redirect_to @barber
    else
      render 'new'
    end
  end

  def update
    @barber = Barber.find(params[:id])

    if @barber.update(barber_params)
      redirect_to @barber
    else
      render 'edit'
    end
  end

  private
    def barber_params
      params.require(:barber).permit(:username, :name, :personal_bio);
    end
end
