class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    last_user = User.last
    if @user.valid?
      params[:last_user] = last_user.id
      redirect_to "/users/#{last_user.id}"
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to "/users/new"
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
    redirect_to "/users/#{@user.id}"
  end

  def destroy
    @user = User.find(session[:user_id])
    session[:user_id] = nil
    redirect_to '/sessions/new'
  end

  private
  def user_params
     params.require(:user).permit(:email, :name, :password, :password_confirmation)
  end

end
