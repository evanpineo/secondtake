class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
    # @categories = Category.order(params[:sort]).all
  end
  
  def new
    @category = Category.new
  end
  
  def create
    @category = Category.create(category_params)
    if @category.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end  
  end
  
  def show
    @category = Category.find(params[:id])
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update_attributes(category_params)
    redirect_to root_path
  end
  
  private
  
  def category_params
    params.require(:category).permit(:manufacturer, :model, :specs)
  end
  
end