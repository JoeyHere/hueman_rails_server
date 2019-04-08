class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def profile
        render json: {user: UserSerializer.new(current_user)}, status: :accepted
    end

    def index 
        @users = User.all
        render json: @users 
    end

    private

    def user_params
        params.require(:user).permit(:id, :user_name, :password, :password_digest)
    end

    def find_user
        @user = User.find_by(id: params[:id])
    end

end
