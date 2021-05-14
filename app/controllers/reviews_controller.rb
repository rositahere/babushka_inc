class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.appointment = @appointment
    @review.save
    redirect_to appointment_path(@appointment)
  end

  private
  def find_appointment
    @review = Review.find(params[:appointment_id])
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end

# reviews    POST   /reviews(.:format)                                                                       reviews#create
# new_review GET    /reviews/new(.:format)                                                                   reviews#new
