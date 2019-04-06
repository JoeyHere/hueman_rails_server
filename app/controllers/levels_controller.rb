class LevelsController < ApplicationController

    def index 
        @levels = Level.all 
        render json: @levels
    end

      def show
        @level = Level.find_by(id: params[:id])
        render json: @level
        end

    def create
        @level = Level.create(level_params)
        render json: @level
    end

    private

    def level_params
        params.permit(:name, :level_data, :user_id)
    end

end
