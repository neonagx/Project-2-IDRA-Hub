class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @user = current_user
    @product = Product.find(params[:product_id])
    @comment = Comment.new(comment_params)
    @comment.user = @user
    @comment.product = @product
    if @comment.save
      redirect_to @product
    else
      render :new
    end
  end

private
  def comment_params
    params.require(:comment).permit(:content)
  end

end
