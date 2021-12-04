class Emails::EmailsController < ApplicationController

  before_action :authenticate_admin!, only: :destroy

  def create
    @global_email = Email.new(email_params)
    if @result = @global_email.save
      respond_to do |format|
        format.html { redirect_to root_url }
        format.js { render :action => "emails" }
        flash.now[:notice] = "You've successfully added your email!"
        welcome_email(@global_email)
      end
    else
      respond_to do |format|
        format.html { redirect_to root_url }
        format.js { render :action => "emails" }
        flash.now[:alert] = "We weren't able to get your email."
      end
    end
  end

  def destroy
    @email = Email.find(params[:id]).destroy
    redirect_to admin_email_panel_path(current_admin)
  end

  def unsubscribe
    @email = Email.find(params[:id]).destroy
    redirect_to root_url
  end

  private

    def email_params
      params.require(:email).permit(:email)
    end

    def welcome_email(email)
      EmailMailer.welcome_email(email).deliver_now
    end

end