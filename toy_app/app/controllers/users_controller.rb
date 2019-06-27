class UsersController < ApplicationController
  include UsersHelper

  def index
    @users = User.all
  end
  
  def create 
    @user = User.new(users_params)
    @user.save 
    redirect_to user_path(@user)
  end 

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def update 
  end

end
