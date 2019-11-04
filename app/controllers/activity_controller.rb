class ActivityController < ApplicationController
    def index
        @activity = Activity.all
    end
    
    def show
        @activity = Activity.find(params[:id])
    end
    
    def new
        @activity = Activity.new
    end
    
    def create
        @activity = Activity.new(activity_params)
        
        if @activity.save
            redirect_to @activity
        else
            render 'new'
        end
    end
end

private
    def activity_params
        params.require(:activity).permit(:name, :type, :description, :link, :location)
    end