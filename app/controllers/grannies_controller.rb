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
