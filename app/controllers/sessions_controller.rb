class SessionsController < ApplicationController

  def index
    @sessions = Session.all
  end

  def new

  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "logged in"
      redirect_to sessions_path
    else
      flash.now.alert = "Username or password is invalid"
      render "new"
    end
  end

end
