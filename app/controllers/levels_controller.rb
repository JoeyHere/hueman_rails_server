class LevelsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index 
        @levels = Level.all.select{ |level| level.completes > 0}
        render json: @levels
    end

    def myLevels
        @levels = current_user.levels
        render json: @levels
    end

    def show
        @level = Level.find_by(id: params[:id])
        render json: @level
    end

    def create
        @level = Level.create(level_params)
        @level.update(user_id: current_user.id)
        if @level.valid?
            render json: @level
        else
            render json: {error: "Something went wrong creating level"}, status: :not_acceptable
        end
    end
    
    def played
        @level = Level.find_by(id: params[:id])
        @user = User.find_by(id: current_user.id)
        if @user.id != @level.user_id
            @action = UserLevelAction.find_by(user_id: @user.id, level_id: @level.id)
                 if !@action
                    @action = UserLevelAction.create(user_id: @user.id, level_id: @level.id, played: 1)
                 else 
                   @action.update(played: @action.played + 1)
                  end
                plays = @level.user_level_actions.map() {|action| action.played}
                @level.update(plays: plays.inject(0){|sum,x| sum + x })
                render json: @action
            else
                render json:  {message: "Playing own level"}
        end
    end
    

    def completed
        @level = Level.find_by(id: params[:id])
        @user = User.find_by(id: current_user.id)
        @action = UserLevelAction.find_by(user_id: @user.id, level_id: @level.id)
            if !@action
                @action = UserLevelAction.create(user_id: @user.id, level_id: @level.id, completed: true)
            else 
                 @action.update(completed: true)
            end
        completed = @level.user_level_actions.select {|action| action.completed}
        @level.update(completes: completed.length())
        render json: @action
    end

    private

    def level_params
        params.permit(:name, :level_data, :user_id)
    end

end
