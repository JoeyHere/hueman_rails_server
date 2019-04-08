class UserLevelActionsController < ApplicationController
    
    def index 
        @actions = UserLevelAction.all 
        render json: @actions
    end

end
