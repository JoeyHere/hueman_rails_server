class ApplicationController < ActionController::API
# before_action :authorized

  def encode_token(payload)
    JWT.encode(payload, secret)
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header
      begin
        JWT.decode(token, secret, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        return 
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    else
      nil
    end
  end
  
  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Please log in', level_data: "[[1]]" }, status: :unauthorized unless logged_in?
  end

  def secret
    "my very secret secret"
  end


end
