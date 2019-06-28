class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def new 
    @user = User.new
  end

  def create
    @user = User.new(users_params)
    @user.save
    flash.notice = "user '#{@user.name}' added!"
    redirect_to User.find(@user.id)
  end 
  
  def show 
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(users_params)
    flash.notice = "user '#{@user.name}' Updated!"
    redirect_to user_path
  end

  def destroy 
    @user = User.find(params[:id])
    @user.destroy
    flash.notice = "User #{@user.name} has been destroyed!!"
    redirect_to users_path
  end 

end
