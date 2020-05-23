class CitizensController < ApplicationController

  def register
    @citizen = Citizen.new
  end

  def signin
    @citizen = Citizen.new
  end

  def authenticate
    # Find password in DB
    search_user = Citizen.find_by_email(params[:citizen][:email])
    # Verifying Password match
    if params[:citizen][:password] == search_user.password
      redirect_to new_citizen_appointment_path(search_user)
    end

  end

  def create
  end

  def edit
    search_user = Citizen.find(params[:citizen][:id])
  end

end
