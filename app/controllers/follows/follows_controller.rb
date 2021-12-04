class Follows::FollowsController < ApplicationController

  before_action :authenticate_user!
  
  def create
    @follow = Follow.new
    user = User.find(params[:followed_id])
    @user = User.friendly.find(user)
    @follower = current_user
    if current_user.follow(user)
      #send_email
      @follow = Follow.new
      @settings = @user.setting
      respond_to do |format|
        format.html { redirect_to user_path(user) }
        format.js { render :action => "follows" }
        flash.now[:notice] = "You have followed #{user.setting.title.presence || user.email}!"
      end
    end
  end

  def destroy
    user = Follow.find(params[:id]).followed
    @user = User.friendly.find(user)
    current_user.unfollow(user)
    respond_to do |format|
      @settings = @user.setting
      format.html { redirect_to user_path(user) }
      format.js { render :action => "follows" }
      flash.now[:notice] = "You have unfollowed #{user.setting.title.presence || user.email}!"
    end
  end

end