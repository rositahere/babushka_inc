class UsersController < ApplicationController

  def show
    @appointments = Appointment.all
  end

end
