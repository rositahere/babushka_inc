class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
    @appointment = Appointment.new
  end

  def new
    @granny = Granny.new
  end

  def create
    @granny = Granny.new(new_granny_params)
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
    params.require(:granny).permit(:description, :photo)
  end
end
