class StaticPagesController < ApplicationController

  layout :resolve_layout

  def home
    @email = Email.new
    @posts = Post.newest.page params[:page]
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