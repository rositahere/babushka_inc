class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @appointment = Appointment.find(params[:appointment_id])
  end

  def create
    if current_user.granny.nil?
      create_review
      redirect_to user_path(current_user)
    else
      create_review
      redirect_to granny_path(current_user.appointment.granny)
    end
  end

  private
  def create_review
    @appointment = Appointment.find(params[:appointment_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.appointment = @appointment
    @review.save
  end

  def review_params
    params.require(:review).permit(:rating, :description, :appointment_id)
  end
end

# reviews    POST   /reviews(.:format)                                                                       reviews#create
# new_review GET    /reviews/new(.:format)                                                                   reviews#new
