class AppointmentsController < ApplicationController
  before_action :set_instances

  def new # Book new Appointments
    # Runs :set_instances
  end

  def create # Create new Appointments
    # Runs :set_instances
    @clinic_ = Clinic.find(params[:appointment][:clinic_id])
    # Initiating new appointment -> Clinic id
    @clinic = @new_appointment.clinic

    if @new_appointment.save
      redirect_to clinic_path(@clinic)
    else
      render :new
    end

  end


  private

  def set_instances
    # Need 3 Instance Variables to make one Appointment
    # => 1 Citizen + Random Clinic + Empty Appointment
    @new_appointment = Appointment.new
    @citizen = Citizen.find(params[:citizen_id])
    # Initiating new appointment -> Appointmetn id
    @citizen = @new_appointment.citizen
  end


end
