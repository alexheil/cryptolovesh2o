class StaticPagesController < ApplicationController

  layout :resolve_layout

  def home
    @email = Email.new
    @users = User.popular.limit(24)
    @feed = current_user.feed.newest.limit(16) if user_signed_in?
  end

  def about
  end

  def privacy
  end

  def terms
  end

  private

    def resolve_layout
      if action_name == 'home'
        'home'
      else
        'lite'
      end
    end

end