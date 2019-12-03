class DatefoodsController < ApplicationController
    def create
        @generator = Generator.find(params[:generator_id])
        @datefood = @generator.datefoods.create(activity_params)
        redirect_to generator_index_path(@generator)
    end
end

private
    def activity_params
        params.require(:datefood).permit(:name, :category, :description, :link, :location)
    end