class Users::SettingsController < ApplicationController
  layout 'settings'

  before_action :authenticate_user!

  # Where you will change all of your general settings.
  def edit
    @settings = current_user.setting
    @posts = current_user.u_posts
  end

  def update
    @settings = current_user.setting
    @posts = current_user.u_posts
    if @settings.update_attributes(settings_params)
      redirect_to edit_user_setting_path(current_user, @settings)
    else
      flash.now[:alert] = 'Whoa! Something went wrong!'
      render layout: "settings", template: "users/settings/edit"
    end
  end

  private

    def settings_params
      params.require(:setting).permit(
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