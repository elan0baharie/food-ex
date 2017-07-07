class SplashesController < ApplicationController
  def index
    @products = Product.all
    render :index
  end
end
