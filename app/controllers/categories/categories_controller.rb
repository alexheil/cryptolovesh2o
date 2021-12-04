class Categories::CategoriesController < ApplicationController

  before_action :authenticate_admin!, except: :show

  def index
    @categories = Category.all
  end

  def show
    @category = Category.friendly.find(params[:id])
    @posts = @category.posts.newest.page params[:page]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
      flash.now[:notice] = "The category was successfully created!"
    else
      render 'new'
      flash.now[:alert] = "The category failed to create."
    end
  end

  def edit
    @category = Category.friendly.find(params[:id])
  end

  def update
    @category = Category.friendly.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to category_path(@category)
      flash.now[:notice] = "The category was successfully created!"
    else
      render 'edit'
      flash.now[:alert] = "The category failed to create."
    end
  end

  def destroy
    @category = Category.friendly.find(params[:id]).destroy
    redirect_to admin_path(current_admin)
  end

  private

    def category_params
      params.require(:category).permit(
        :title
      )
    end

end