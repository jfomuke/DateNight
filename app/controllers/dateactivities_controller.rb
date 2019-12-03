class DateactivitiesController < ApplicationController
    def create
        @generator = Generator.find(params[:generator_id])
        @dateactivity = @generator.dateactivities.create(activity_params)
        redirect_to generator_index_path(@generator)
    end
end

private
    def activity_params
        params.require(:dateactivity).permit(:name, :category, :description, :link, :location)
    end