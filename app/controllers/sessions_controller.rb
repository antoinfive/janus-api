class SessionsController < ApplicationController
  skip_before_action :authenticate!

  def create
    parse = params[:auth_token]

    # user = User.authenticate(user_params)
    binding.pry
    user = User.find_by(auth_token: "Aw2ZFF2KlMIopT_p1OSu")
    if user
      data = {
        token: user.auth_token,
        email: user.email
      }
      render json: data, status: 201
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end
end
