class UsersController < ApplicationController

  def show
    @appointment = Appointment.all
    @granny = Granny.find(params[:id])
  end
end
