class UserController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.new(user_params)
    if user.save
      render :json => {
        :msg => "Sign-up Successfull",
      },
      :status => 200
    else
      render :json => {
        :msg => "try After some time"
      },
      :status => 406
    end
  end


  private
  def user_params
    params.require(:user).permit(:username, :password_digest)
  end
end
