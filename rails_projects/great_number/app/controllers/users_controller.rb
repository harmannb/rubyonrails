class UsersController < ApplicationController
  def index

    @random_number = rand(1...100)

    unless session[:random]
      session[:random] = @random_number
    end

  end

  def guess

    @number = params[:number].to_i

    if @number > session[:random]
      flash[:message] = "Too High"
    elsif @number < session[:random]
      flash[:message] = "Too Low"
    else
      flash[:message] = "#{@number} was the number!"
    end

    redirect_to :back

  end

end
