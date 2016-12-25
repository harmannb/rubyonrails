class UsersController < ApplicationController

  def index

  end

  def result

    @name = params[:name]
    @location = params[:location]
    @language = params[:language]
    @comment = params[:comment]

    @sess = session[:counter]

    if session[:counter] == nil
      session[:counter] = 0
    else
      session[:counter] += 1
    end

  end

end
