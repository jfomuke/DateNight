class ActivityController < ApplicationController
    def new
        @activty = Activity.new
    end
    
    def create
        @activity = Activity.new(params[:activity])
        
        @activity.save
    end
end