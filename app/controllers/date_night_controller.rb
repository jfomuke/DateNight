class DateNightController < ApplicationController
  
  def generate
  end
  
  def create
        render plain: params[:activity].inspect
  end
  
  
  
end
