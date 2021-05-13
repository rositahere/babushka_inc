class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
    @appointment = Appointment.new
  end

  def new#rosita
  end

  def create#rosita
  end

  def update
  end

end
