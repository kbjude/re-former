class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(use_params)
    @user.save

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(use_params)

    if @user.update(use_params)
      redirect_to new_user_path
    else
      render :edit
    end
  end

  private

  def use_params
    params.require(:user).permit(:username, :email, :password)
  end
end
