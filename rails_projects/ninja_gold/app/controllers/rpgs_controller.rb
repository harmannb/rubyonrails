class RpgsController < ApplicationController

  def index

    if session[:total] == nil
      session[:total] = 0
    elsif session[:farm]
      session[:total] += session[:farm]
    elsif session[:cave]
      session[:total] += session[:cave]
    elsif session[:casino]
      session[:total] += session[:casino]
    elsif session[:house]
      session[:total] += session[:house]
    end

  end

  def farm

    @farm = rand(10..20)

    session[:farm] = params[:farm]

    unless session[:farm]
      session[:farm] = @farm
    end

    redirect_to :back

  end

  def cave

    @cave = rand(5..10)

    session[:cave] = params[:cave]

    unless session[:cave]
      session[:cave] = @cave
    end

    redirect_to :back

  end

  def casino

    @casino = rand(2..5)

    session[:casino] = params[:casino]

    unless session[:casino]
      session[:casino] = @casino
    end

    redirect_to :back

  end

  def house

    @house = rand(-50..50)

    session[:house] = params[:house]

    unless session[:house]
      session[:house] = @house
    end

    redirect_to :back

  end



end
