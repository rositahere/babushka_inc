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

  def show
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.status = params[:format]
    @appointment.save
    redirect_to granny_path(current_user), notice: "Status updated to #{@appointment.status}"
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :location)
  end
end
