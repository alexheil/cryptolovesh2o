class Users::UsersController < ApplicationController
  before_action :authenticate_user!, except: :show
  before_action :correct_user, only: :update

  def show
    @user = User.friendly.find(params[:id])
  end

  def update
    user = User.friendly.find(params[:id])
    @user = user
    if @user.update_attributes(user_params)
      flash[:notice] = "Good job!"
      redirect_to user_path(@user)
    else
      flash.now[:alert] = 'Bad job!'
      redirect_to user_path(@user)
    end
  end

  private

    def user_params
      params.require(:user).permit()
    end

    def correct_user
      @user = User.friendly.find(params[:id])
      unless admin_signed_in? || user_signed_in? && @user == current_user
        redirect_to user_path(@user)
      end
    end

end