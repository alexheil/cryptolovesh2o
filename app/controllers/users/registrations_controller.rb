# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout :resolve_layout

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super

    if Rails.env.production?
      Stripe.api_key = ENV['STRIPE_API_KEY']
    else
      Stripe.api_key = "sk_test_51HPXXkIvhiSXzhOGeV4VKjTS9IRWxKu5TkGStdnRqWDDIMiWXBTmV1gyXL21HOXpCY2GRBMuMPvbA59ARKbG881a00QExFmNJ6"
    end

    #create settings
    @settings = @user.create_setting(settings_params)
    
    #create Stripe customer
    customer = Stripe::Customer.create(
      email: @user.email
    )

    #save Stripe customer id to user
    @user.update_attributes(
      customer_id: customer.id
    )

    #create email
    unless Email.where(email: @user.email).exists?
      email = Email.create(
        email: @user.email
      )
      email.save
      if email.save
        welcome_email(email)
      end
    end

  end

  # GET /resource/edit
  def edit
    @settings = current_user.setting
    super
  end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end

  private

    def resolve_layout
      if action_name == 'edit' 
        'u_dashboard'
      else
        'lite'
      end
    end

    def welcome_email(email)
      EmailMailer.welcome_email(email).deliver_now
    end

    def settings_params
      params.permit(
        :blog_style,
        :hero_style,
        :hero_post_id,
        :header_style,
        :header_link_style,
        :header_background_style,
        :header_border_style,
        :header_logo_allow,
        :header_title_allow,
        :header_title_size,
        :header_title_weight,
        :footer_tagline_allow,
        :header_tagline_style,
        :header_tagline_weight,
        :menu_style,
        :footer_style,
        :footer_credit_allow,       
        :footer_border_style,
        :footer_background_style,
        :footer_social_media_allow,
        :background_style,
        :animation_time,
        :button_style,
        :post_style,
        :post_comments_allow,
        :shadows,
        :border_radius, 
        :padding,
        :line_height,
        :font_weight,
        :font_size,
        :font_family,
        :font_letterspacing,
        :color_main,
        :color_accent,
        :color_background,
        :title,
        :tagline,
        :twitter,
        :facebook,
        :instagram,
        :pinterest,
        :linkedin,
        :youtube,
        :twitch,
        :discord,
        :google_analytics,
        :google_data_ad_client_id,
        :post_comments_style,
        :title_size,
        :title_weight,
        :title_align,
        :title_family,
        :link_weight,
        :link_style,
        :logo
      )
    end

end
