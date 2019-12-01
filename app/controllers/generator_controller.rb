class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
        @activity = Activity.find(@generator.acitivityID || @generator.foodID)
    end
    
    def create
        activityArray = Activity.where(category: 'activity')
        randActivity = activityArray[rand(activityArray.length)]
        randActivityParams = [:name => randActivity.name, :category => randActivity.category, :description => randActivity.description, :link => randActivity.link, :location => randActivity.location]
        aID = randActivity.id
        foodArray = Activity.where(category: 'food')
        randFood = foodArray[rand(foodArray.length)]
        fID = randFood.id
        @generator = Generator.new(acitivityID: aID, foodID: fID)
        @generator.save
        @activity = @generator.activity.create(randActivityParams)
        @activity = @generator.activity.create(randFood.name, randFood.category, randFood.description, randFood.link, randFood.location)
        
        if @generator.save
            redirect_to @generator
        end
    end
end