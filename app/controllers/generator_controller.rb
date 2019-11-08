class GeneratorController < ApplicationController
    def new
        @generator = Generator.new
    end
    
    def show
        @generator = Generator.find(params[:id])
    end
    
    def create
        @generator = Generator.new
        redirect_to @generator
    end
end
