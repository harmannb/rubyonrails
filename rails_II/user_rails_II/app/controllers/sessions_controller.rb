class SessionsController < ApplicationController
  def new
  end

  def create
    puts params[:Email]
    puts params[:Password]
    @user = User.find_by_email(params[:Email])
    if @user && @user.authenticate(params[:Password])
      session[:user_id] = @user.id
      redirect_to "/users/#{@user.id}"
    else
      flash[:errors] = ["Invalid"]
      redirect_to "/users/new"
    end
  end


end
