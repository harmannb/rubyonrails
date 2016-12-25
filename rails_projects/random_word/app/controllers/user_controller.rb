class UserController < ApplicationController
  def index

    @random = params[:random]

    @random = (0...15).map { (65 + rand(26)).chr }.join

    @sess = session[:counter]

    if session[:counter] == nil
      session[:counter] = 0
    else
      session[:counter] += 1
    end

    render 'results'

  end

  def results

  end
end
