class ProductsController < ApplicationController
  before_action :set_garment, only: [:show, :edit, :update, :destroy]
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
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :for_sale)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
