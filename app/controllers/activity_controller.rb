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
    
    def edit
        usub = UserSubmission.find(params[:id])
        @activity = Activity.new(:name => usub.name, :category => usub.category, :description => usub.description, :link => usub.link, :location => usub.location)
        
        if @activity.save
            @usersubmission = UserSubmission.find(params[:id])
            @usersubmission.destroy
            render 'saved'
        else
            render 'new'
        end 
    end
end

private
    def activity_params
        params.require(:activity).permit(:name, :category, :description, :link, :location)
    end
