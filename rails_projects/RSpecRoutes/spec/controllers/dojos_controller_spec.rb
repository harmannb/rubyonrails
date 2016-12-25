require 'rails_helper'

RSpec.describe DojosController, type: :controller do
  it "routes / to the users controller" do
    expect(:get => "/").to route_to(:controller => "dojos", :action => "index")
  end

  it "routes / to the users controller" do
    expect(:get => "/world").to route_to(:controller => "dojos", :action => "world")
  end

  it "routes / to the users controller" do
    expect(:get => "/ninjas").to route_to(:controller => "dojos", :action => "ninjas")
  end

end
