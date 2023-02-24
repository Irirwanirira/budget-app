class CategoriesController < ApplicationController
  # before_action :set_category, only: %i[ show edit update destroy ]

  # GET /categories or /categories.json
  def index
    @categories = current_user.categories
  end

  # GET /categories/1 or /categories/1.json
  def show
    @category = Category.find(params[:id])
    @transactions = @category.transactions.order(created_at: :desc)
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # POST /categories or /categories.json
  def create
    category = Category.new(category_params)

    if category.save
      redirect_to categories_url, notice: 'Category created successfully.'
    else
      redirect_to categories_path, alert: 'Failed to create new category.'
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    if @category.destroy!
      flash[:notice] = 'Category deleted!'
      redirect_to categories_path
    else
      flash[:alert] = 'Failed to delete category!'
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def category_params
    category = params.require(:category).permit(:name, :icon, :user_id)
    category[:user_id] = current_user.id
    category
  end
end
