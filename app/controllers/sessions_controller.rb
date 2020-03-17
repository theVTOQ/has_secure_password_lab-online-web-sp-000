class SessionsController < ApplicationController
  def create
    @user = User.find_by(name: params[:name])
    return head(:forbidden) if @user.nil? || !@user.authenticate(params[:password])
    binding.pry
    session[:user_id] = @user.id
  end
end
