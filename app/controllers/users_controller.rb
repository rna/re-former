class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    # @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path 
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attributes(user_params)
      redirect_to new_user_path 
    else
      render :edit
    end
  end
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
