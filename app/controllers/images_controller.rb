class ImagesController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @image = Image.new
  end

  def create
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @image = @product.images.new(params.require(:image).permit(:image))
    if @image.save
      redirect_to @product
    else
      render :new
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @product = Product.find(params[:product_id])
    @image.destroy
    redirect_to @product
  end
end
