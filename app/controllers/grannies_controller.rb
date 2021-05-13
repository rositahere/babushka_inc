class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
    @appointment = Appointment.new
  end

  def new
  end

  def create
  end

  def update
  end

end
