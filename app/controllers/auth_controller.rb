class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create]

def create
    @user = User.find_by(user_name: user_login_params[:user_name])
    if @user && @user.authenticate(user_login_params[:password])
        @token = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user, token: "@token")}, status: :authorized
    else
        render json: {message: "Invallid"}, status: :unauthorized
    end
end

def user_login_params
    params.require(:user).permit(:user_name, :password)
end

end
