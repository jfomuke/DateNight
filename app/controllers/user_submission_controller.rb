class UserSubmissionController < ApplicationController
    #needs update & delete
    # edit from blog - notes
    
    
     def index
        @usersubmission = UserSubmission.all
     end
    
    def show
        @usersubmission = UserSubmission.find(params[:id])
    end
    
    def new
        @usersubmission = UserSubmission.new
    end
    
    # new (11/7/2019)
    # usersubmission#edit
    def edit
        @usersubmission = UserSubmission.find(params[:id])
    end
    
    # new
    def destroy
        @usersubmission = UserSubmission.find(params[:id])
        @usersubmission.destroy
        
        redirect_to articles_path
    end
    
    def create
        @usersubmission = UserSubmission.new(uSub_params)
        
        if @usersubmission.save
            redirect_to @usersubmission
        else
            render 'new'
        end
    end
end # end class


private
    def uSub_params
        params.require(:usersubmission).permit(:name, :category, :description, :link, :location)
    end
