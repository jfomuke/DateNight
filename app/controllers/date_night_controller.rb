class DateNightController < ApplicationController
  
  def show
    @date_night = DateNight.all
  end

  def view
    
  end
  
end
