class UserSubmissionController < ApplicationController
    
    http_basic_authenticate_with :name => "admin", :password => "password", only: :index
    
    def index
        @usersubmission = UserSubmission.all
    end
    
    def show
        @usersubmission = UserSubmission.find(params[:id])
    end
    
    def new
        @usersubmission = UserSubmission.new
    end
    
    def edit
        @usersubmission = UserSubmission.find(params[:id])
    end
    
    def update
        @usersubmission = UserSubmission.find(params[:id])
        @usersubmission.update(uSub_params)
        if !(@usersubmission.update(uSub_params))
            render 'edit'
        else
            redirect_to user_submission_index_path
        end
    end
    
    def destroy
        @usersubmission = UserSubmission.find(params[:id])
        @usersubmission.destroy
        
        redirect_to user_submission_index_path
    end
    
    def create
        @usersubmission = UserSubmission.new(uSub_params)
        
        if @usersubmission.save
            redirect_to @usersubmission
        else
            render 'new'
        end
    end
end


private
    def uSub_params
        params.require(:user_submission).permit(:name, :category, :description, :link, :location)
    end
