class UsersController < ApplicationController
  def new
    render "signup"
  end

  def create
    User.create(user_params)
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
