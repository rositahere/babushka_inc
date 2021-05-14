class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
    @appointment = Appointment.new
  end
# rosita
  def new
    @granny = Granny.new
  end
# rosita
  def create

  end

  def update
  end

  private
  def new_granny_params
    params.require(:granny).permit(:description, :photo)
  end
end
