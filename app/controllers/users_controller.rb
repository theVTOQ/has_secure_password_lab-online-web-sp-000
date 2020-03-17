class UsersController < ApplicationController
  def new
    render "signup"
  end

  def create
    binding.pry
    User.create(user_params)
    sessions[:user_id] = User.last.id
  end

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
