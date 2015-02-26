class UsersController < ApplicationController

  before_action :set_user
  before_action :current_user?, only: [:show, :edit, :update]

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end


private

  def set_user
      @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :picture)
  end

  def current_user?
    if current_user != @user
      not_found
    end
  end

end


