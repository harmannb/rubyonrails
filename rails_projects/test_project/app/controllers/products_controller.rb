class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new( name: params[:name], description: params[:description])
      redirect_to '/products/index'

    #showing specific aspects of the product
    #render :text => @product.inspect

    #putting something into the product
    # puts '/n/n/n/n', @product, '/n/n/n'

    #putting something into the product and inspect the product
    # puts '/n/n/n/n', @product.inspect, '/n/n/n'
  end
end
