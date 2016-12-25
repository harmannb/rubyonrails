class UsersController < ApplicationController
  def index
    @user = User.all
    render json: User.all

  end

  def create
    User.create( name: params[:name])
    redirect_to '/users/index'
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    session[:id] = params[:id]
    puts "name", @user.created_at
    render "show"
  end

  def edit
    @user = User.find(params[:id])
    render 'edit'
  end



end
