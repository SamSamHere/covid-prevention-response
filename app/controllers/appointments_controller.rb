class AppointmentsController < ApplicationController
  before_action :set_instances

  def new # Book new Appointments
  end

  def create # Create new Appointments
    # Runs :set_instances
    appt_clinic = Clinic.find(params[:appointment][:clinic_id])
    # Initiating new appointment -> Clinic id
    new_appointment.clinic = appt_clinic

    if new_appointment.save
      redirect_to clinic_path(appt_clinic)
    else
      render :new
    end

  end


  private

  def set_instances
    @new_appointment = Appointment.new
    @citizen = Citizen.find(params[:citizen_id])
    @new_appointment.citizen =  @citizen
  end


  #   <%= f.association :citizen, input_html: { value: @citizen.email } %>
  # <%= f.association :clinic %>

end
