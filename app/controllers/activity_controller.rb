class ActivityController < ApplicationController
    def index
        @activity = Activity.all
    end
    
    def show
        @activity = Activity.find(params[:activityID])
    end
    
    def new
        @activity = Activity.new
    end
    
    def create
        @activity = Activity.new(article_params)
        
        @activity.save
    end
end

private
    def activity_params
        params.require(:activity).permit(:activityID, :name, :type, :description, :link, :location)
    end