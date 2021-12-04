class Contacts::ContactsController < ApplicationController
  layout 'lite', only: :new

  before_action :authenticate_admin!, only: [:show, :destroy]

  def show
    @contact = Contact.friendly.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_url
      flash.now[:notice] = "The message was successfully sent!"
    else
      render 'new'
      flash.now[:alert] = "The meassage failed to send."
    end
  end

  def destroy
    @contact = Contact.friendly.find(params[:id]).destroy
    redirect_to admin_path(current_admin)
  end

  private

    def contact_params
      params.require(:contact).permit(
        :display_name,
        :email,
        :title,
        :content
      )
    end

end