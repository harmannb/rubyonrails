class UsersController < ApplicationController

  def index
    render text: "What do you want me to say???"
    #renders the index.html.erb view in the views/users folder
  end

  def hello
    render text: "CodingDojo Hello"
  end

  def say
    render text: "Saying Hello!"
  end

  def joe
    render text: "Saying Hello Joe!"
  end

  def micheal
    redirect_to '/say/hello/joe'
  end

  def times
    if session[:counter] == nil
      session[:counter] = 0
    else
      session[:counter] += 1
    end
    render text: "<html> You visted this url #{session[:counter]} time </html>"
  end

  def restart
    session.clear
    render text: "Destroyed the session!"
  end
end
