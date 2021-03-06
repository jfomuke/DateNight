class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
    end
    
    def create
        activityArray = Activity.where(category: 'activity')
        randActivity = activityArray[rand(activityArray.length)]
        randActivityParams = [:name => randActivity.name, :category => randActivity.category, :description => randActivity.description, :link => randActivity.link, :location => randActivity.location]
        aID = randActivity.id
        
        foodArray = Activity.where(category: 'food')
        randFood = foodArray[rand(foodArray.length)]
        randFoodParams = [:name => randFood.name, :category => randFood.category, :description => randFood.description, :link => randFood.link, :location => randFood.location]
        fID = randFood.id
        
        @generator = Generator.new(acitivityID: aID, foodID: fID)
        @generator.save
        
        @dateactivities = @generator.dateactivities.create(randActivityParams)
        @datefoods = @generator.datefoods.create(randFoodParams)
        
        if @generator.save
            redirect_to @generator
        end
    end
end