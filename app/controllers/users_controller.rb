class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    @user.username = params[:username]
    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
  

    render("users/show.html.erb")
  end

end
