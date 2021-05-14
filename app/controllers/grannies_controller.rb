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
    @granny = Granny.new(granny_params)
    @--.-- = @--
    @granny.save
    redirect_to _path(@)
  end

  def update
  end

end
