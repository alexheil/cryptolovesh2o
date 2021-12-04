class StaticPagesController < ApplicationController

  layout :resolve_layout

  def home
    @email = Email.new
    @users = User.popular.limit(24)
    @posts = UPost.popular.limit(16)
    @recent_posts = UPost.newest.limit(16)
    @feed = current_user.feed.newest.limit(16) if user_signed_in?
    @tags = Tag.popular.limit(30)
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