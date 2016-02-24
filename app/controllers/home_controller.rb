class HomeController < ApplicationController
  def index
  end

  def about
  end

  def styles
  end

  def create_mailinglist
    @mailinglist = Mailinglist.new(
      :email => params[:email],
      :first_name => params[:first_name],
      :last_name => params[:last_name]
    )
    if @mailinglist.save
      flash[:success] = "You are added to the mailinglist."
      redirect_to root_path
    else
      flash[:fail] = "Fail to add you to the mailing list"
      redirect_to root_path
    end
  end
end
