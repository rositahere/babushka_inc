class AppointmentsController < ApplicationController

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.granny = Granny.find(params[:granny_id])
    if @appointment.save
      redirect_to user_path(current_user)
    else
      render "grannies/show"
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :location)
  end
end
