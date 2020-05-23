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
    @new_citizen = Citizen.new(params_citizen)

    if @new_citizen.save
      redirect_to new_citizen_appointment_path(@new_citizen)
    else
      render :new
    end
  end

  def edit
    search_user = Citizen.find(params[:citizen][:id])
  end

  private

  def params_citizen
    params.require(:citizen).permit([:email, :password, :postal_code])
  end

end
