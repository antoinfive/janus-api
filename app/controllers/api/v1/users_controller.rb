class Api::V1::UsersController < ApplicationController

  def index
    render json: User.all
  end

  private
  def user_params
    
  end
end
