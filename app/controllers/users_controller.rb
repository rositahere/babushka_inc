class UsersController < ApplicationController

  def show
    @appointment = Appointment.where("user_id = ?", current_user)
    @granny = Granny.find_by(user_id: params[:id])
    @review = Review.all
  end
end
