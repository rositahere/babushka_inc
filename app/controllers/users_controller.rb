class UsersController < ApplicationController

  def show
    @appointment = Appointment.all
    @granny = Granny.find_by(user_id: params[:id])
    @review = Review.all
  end
end
