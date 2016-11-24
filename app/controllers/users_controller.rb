class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    @user.username = params[:username]
    render("users/index.html.erb")
  end
end
