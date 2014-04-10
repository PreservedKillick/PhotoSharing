class PhotosController < ApplicationController

  before_filter :authorize, only: [:new, :create, :edit, :update, :delete, :destroy]

  def index
    @photos = Photo.all
  end

  def new
    @user = User.find(params[:user_id])
    @photo = @user.photos.new
  end

  def create
    @user = User.find(params[:user_id])
    @photo = @user.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "New photo uploaded"
      redirect_to user_photo_path(@user, @photo)
    else
      render "new"
    end
  end

  def show
    @user = User.find(Photo.find(params[:id]).user_id)
    @photo = @user.photos.find(params[:id])
  end

  def edit
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @photo = @user.photos.find(params[:id])
    if @photo.update(photo_params)
      flash[:notice] = "Photo updated"
      redirect_to user_photo_path(@user, @photo)
    else
      render 'edit'
    end
  end


  private
  def photo_params
    params.require(:photo).permit(:image)
  end

end
