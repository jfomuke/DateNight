class DateNightController < ApplicationController
  
  def generate
  end
  
  def create
        render plain: params[:activity].inspect
  end
  
  
  
  def show
    @date_night = DateNight.all
  end

  def view
    
  end
  
end
