class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate!, only: [:create] #ASK ANTOIN

  def index
    render json: User.all
  end

  def me
    render json: current_user
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end
