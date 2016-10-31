class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @user = User.find(session[:user_id])
    @product = @user.products.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

  def update
    if @product.update_attributes(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :for_sale)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
