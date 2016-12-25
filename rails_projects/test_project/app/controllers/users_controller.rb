class UsersController < ApplicationController
  def index
    @users = User.all
    # if errors?
    #   flash[:error] = 'You have errors'
    #   redirect_to '/users/'
    # else
    #   flash[:success] = 'You did it!'
    #   redirect_to '/users/'
    # end
  end

  def create
    session[:id] = params[:id]
  end

  def log_out
    session[:id] = nil
  end

end
