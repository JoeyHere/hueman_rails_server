class LevelsController < ApplicationController

    skip_before_action :authorized, only: [:index, :show]

    def index 
        @levels = Level.all.select{ |level| level.completes > 0  && level.published}
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

    def update
        @level = Level.find_by(id: params[:id])
        if @level.user_id == current_user.id && !@level.published
            @level.update(level_params)
                    if @level.valid?
            render json: @level
                 else
            render json: {error: "Something went wrong updating level!"}, status: :not_acceptable
                 end 
        else
            render json: {error: "You can't edit published levels!"}, status: :not_acceptable
        end
    end

    def create
        @level = Level.create(level_params)
        @level.update(user_id: current_user.id)
        if @level.valid?
            render json: @level
        else
            render json: {error: "Something went wrong creating level!"}, status: :not_acceptable
        end
    end

    def destroy
        @level = Level.find_by(id: params[:id])
        if @level.user_id == current_user.id 
            @level.destroy()
             render json: @level
        else
            render json: {error: "You can't delete other user levels!"}, status: :not_acceptable
        end
    end
    
    def played
        @level = Level.find_by(id: params[:id])
        if current_user.id != @level.user_id && @level.published
            @action = UserLevelAction.find_by(user_id: current_user.id, level_id: @level.id)
                 if @action
                    @action.update(played: @action.played ? @action.played + 1 : 1)
                 else 
                   @action = UserLevelAction.create(user_id: current_user.id, level_id: @level.id, played: 1)
                  end
                plays = @level.user_level_actions.map() {|action| action ? action.played : 0}
                plays = plays.inject(0){|sum,x| sum + x }
             @level.update(plays: plays)
                render json: {message: "Added to Plays"}
            else
                render json:  {message: "Playing own level"}
        end
    end
    

    def completed
        @level = Level.find_by(id: params[:id])
        if @level.published
        @action = UserLevelAction.find_by(user_id: current_user.id, level_id: @level.id)
            if !@action
                @action = UserLevelAction.create(user_id: current_user.id, level_id: @level.id, completed: true)
            else 
                 @action.update(completed: true)
            end
        completed = @level.user_level_actions.select {|action| action.completed}
        @level.update(completes: completed.length())
        render json: @action
        else
            render json: {message: "Playing unpublished level"}
        end
    end

    def publish 

         @level = Level.find_by(id: params[:id])
         if @level
            if current_user.id == @level.user_id 
                @level.update(level_params)
                @level.update(published: true)
                if @level.valid?
                    render json: @level
                 else
                    render json: {error: "Something went wrong publishing level!"}, status: :not_acceptable
                end 
            else
                render json: {error: "You can't publish other user levels!"}, status: :not_acceptable
            end

        else
      
            @level = Level.create(level_params)
            @level.update(user_id: current_user.id, published: true)
            if @level.valid?
                render json: @level
             else
                 render json: {error: "Something went wrong creating level!"}, status: :not_acceptable
             end
        end

    end

    private

    def level_params
        params.permit(:name, :level_data, :user_id)
    end

end
