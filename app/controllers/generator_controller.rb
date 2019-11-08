class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
    end
    
    def create
        @generator = Generator.new()
        
        redirect_to @generator
    end
    # has_and_belongs_to_many :activity - for use later in model
end
