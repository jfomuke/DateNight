class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
    end
    
    def create
        activityArray = Activity.where(category: 'activity').ids
        aID = activityArray[rand(activityArray.length)]
        foodArray = Activity.where(category: 'food').ids
        fID = foodArray[rand(foodArray.length)]
        @generator = Generator.new(acitivityID: aID, foodID: fID)
        
        if @generator.save
            redirect_to @generator
        end
    end
end