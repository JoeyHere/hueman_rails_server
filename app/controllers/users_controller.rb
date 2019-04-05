class UsersController < ApplicationController

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end


end
