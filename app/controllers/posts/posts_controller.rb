class Posts::PostsController < ApplicationController
  layout 'post', only: :show

  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @posts = Post.newest.page params[:page]
  end

  def show
    @post = Post.friendly.find(params[:id])
    @category = @post.category
    @recent_posts = Post.newest.limit(3)
  end

  def new
    @post = Post.new
    @categories = Category.all
  end

  def create
    @post = Post.new(post_params)
    @categories = Category.all
    if @post.save
      flash[:notice] = "You just created " + @post.title + "!"
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'Whoa! Something went wrong!'
      render 'new'
    end
  end

  def edit
    @post = Post.friendly.find(params[:id])
    @categories = Category.all
  end

  def update
    @post = Post.friendly.find(params[:id])
    @categories = Category.all
    if @post.update_attributes(post_params)
      flash[:notice] = "Good job!"
      redirect_to post_path(@post)
    else
      flash.now[:alert] = 'Bad job!'
      render 'edit'
    end
  end

  def destroy
    @post = Post.friendly.find(params[:id]).destroy
    redirect_to root_url
    flash[:notice] = "Delete successful."
  end

  private
  
    def post_params
      params.require(:post).permit(
        :category_id,
        :title,
        :image,
        :description,
        :content,
        :readtime,
        :tldr
      )
    end

end