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
    end
end

private
    def generator_params
        params.require(:generator).permit(:activityID, :foodID)
    end
