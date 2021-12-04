class Admins::AdminsController < ApplicationController

  before_action :authenticate_admin!

  def show
    @admin = Admin.friendly.find(params[:id])
  end

  def user_panel
    @admin = Admin.friendly.find(params[:admin_id])
    @users = User.all.page params[:page]
  end

  def email_panel
    @admin = Admin.friendly.find(params[:admin_id])
    @emails = Email.all.page params[:page]
  end

  def contact_panel
    @admin = Admin.friendly.find(params[:admin_id])
    @contacts = Contact.all.page params[:page]
  end

end