class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def show
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to product_path(@review.product)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product.reviews.find(params[:id])
    @review = @product.reviews.find(params[:id])
    @review.destroy
    redirect_to product_path(@product)
  end

private
  def review_params
    params.require(:review).permit(:content, :author, :rating, :product_id)
  end
end
