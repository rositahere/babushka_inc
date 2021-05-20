class GranniesController < ApplicationController

  def index
    if current_user.granny.nil?
      @grannies = Granny.all
      @users = User.all
    else
      redirect_to current_user.granny
    end
  end

  def show
    @granny = Granny.find_by(id: params[:id])
    @appointment = Appointment.new
    past_appt = Appointment.find_by(granny_id: params[:id])
    if past_appt
      @review = Review.find_by(appointment_id: past_appt.id)
    end
    @user = User.all
  end

  def new
    @granny = Granny.new
  end

  def create
    @granny = Granny.new(new_granny_params)
    @granny.user = current_user
    if @granny.save
      redirect_to granny_path(@granny)
    else
      render :new
    end
  end

  def update
  end

  private

  def new_granny_params
    params.require(:granny).permit(:description, photos:[])
  end
end
