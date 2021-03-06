class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
    @comment = Comment.new
  end

  def new
    @product = Product.new
    @product.images.build
  end

  def edit
    redirect_to products_path unless current_user == @product.user || current_user.admin
  end

  def create
    @user = User.find(session[:user_id])
    @product = @user.products.new(product_params)
    if @product.save
      redirect_to @product
    else
      @product.images.build
      render :new
    end
  end

  def destroy
    if current_user == @product.user || current_user.admin
      @product.destroy
      redirect_to products_path
    else
      redirect_to products_path
    end
  end

  def update
    if current_user == @product.user || current_user.admin
      if @product.update_attributes(product_params)
        redirect_to @product
      else
        render :edit
      end
    end
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :for_sale, images_attributes: [:id, :image, :_destroy])
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
