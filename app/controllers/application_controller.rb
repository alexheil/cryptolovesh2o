class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :global_email

  def global_email
    @global_email = Email.new
  end

  protected

    def configure_permitted_parameters
      added_attrs = [
        :username, 
        :email, 
        :password, 
        :password_confirmation, 
        :current_password, 
        :remember_me, 
        :slug
      ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

end
