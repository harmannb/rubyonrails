class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.create
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to "/users"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
        if @user.valid?
      redirect_to "/users"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to :back
    end
  end

  def delete
    @user = User.find(params[:id])
    @user.destroy
    redirect_to :back
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
