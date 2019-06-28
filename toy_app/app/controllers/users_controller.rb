class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end

  def new 
    @new_users = User.new
  end

  def create
    @new_user = User.new(users_params)
    @new_user.save
    flash.notice = "user '#{@new_user.name}' added!"
    redirect_to User.find(@new_user.id)
  end 
  
  def show 
    @user = User.find(params[:id])
  end

  def edit
    @edit_user = User.find_by(params[:id])
  end
  
  def update
    @user = User.find_by(params[:id])
    @user.update(users_params)
    flash.notice = "user '#{@user.name}' Updated!"
    redirect_to user_path
  end

end
