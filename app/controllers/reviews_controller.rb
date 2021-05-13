class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.appointment = @appointment
    @review.save
    redirect_to user_appointments_path(@appointment)
    # access params
    # permit required
  end

  private
  def find_appointment
    @review = Review.find(params[:appointment])
  end

  def review_params
    params.require(:review).permit(:rating, :description)
  end
end

# reviews    POST   /reviews(.:format)                                                                       reviews#create
# new_review GET    /reviews/new(.:format)                                                                   reviews#new
