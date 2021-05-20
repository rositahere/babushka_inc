class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    find_appointment
    @review = Review.new(review_params)
    @review.user = current_user
    @review.appointment = @appointment
    @review.save
    redirect_to user_path(current_user)
  end

  private
  def find_appointment
    @appointment = Appointment.find_by(user_id: current_user.id)
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end

# reviews    POST   /reviews(.:format)                                                                       reviews#create
# new_review GET    /reviews/new(.:format)                                                                   reviews#new
