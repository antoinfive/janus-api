class ApplicationController < ActionController::API
  include ActionController::Serialization
  include ActionController::HttpAuthentication::Token::ControllerMethods
  before_action :authenticate!
  helper_method :current_user

  private
  def current_user
    User.find_by(auth_token: the_auth_token)
  end

  def authenticate!
    authenticate_token || render_unauthorized
  end

  def authenticate_token
    authenticate_with_http_token do |token, options|
      User.find_by(auth_token: token)
    end
  end

  def the_auth_token
    authenticate_with_http_token do |token, options|
      return token
    end
  end

  def render_unauthorized
    render json: {
      errors: ["Bad Credentials"]
    }, status: 401
  end
end
