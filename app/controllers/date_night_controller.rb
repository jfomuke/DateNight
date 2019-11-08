class DateNightController < ApplicationController
  
  def show
    @date_night = Datenight.find(params[:id])
  end

  def new
    @date_night = Datenight.new
  end
  
  def create
    @date_night = Datenight.new(datenight_params)
    
    redirect_to @date_night
  end
  
end