class SessionsController < ApplicationController

  def index

  end

  def new

  end

  def create
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice] = "logged in"
      redirect_to user_path(@user)
    else
      flash.now.alert = "Username or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "logged out"
    redirect_to sessions_path
  end

end
