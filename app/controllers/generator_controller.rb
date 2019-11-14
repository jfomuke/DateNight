class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
    end
    
    def create
        @generator = Generator.new(generator_params)
        
        if @generator.save
            redirect_to @generator
        end
        # return activity array
        # choose random number to return one
        
        # return food array
        # choose random number to return one
    end
end

private
    def generator_params
        activityArray = Activity.where(category: 'activity').ids
        :activityID = activityArray[rand(activityArray.length)]
        foodArray = Activity.where(category: 'food').ids
        :foodID = foodArray[rand(foodArray.length)]
        params.require(:generator).permit(:activityID, :foodID)
    end