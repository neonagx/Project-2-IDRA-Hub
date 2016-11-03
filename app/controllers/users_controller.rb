class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id.to_s
      redirect_to @user
    else
      render :new
    end
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def edit
    redirect_to users_path unless current_user == @user || current_user.admin
  end

  def destroy
    if current_user == @user || current_user.admin
      @user.destroy
      redirect_to root_path
    else
      redirect_to users_path
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :date_of_birth, :gender, :phone, :email, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
