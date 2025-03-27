class ReviewsController < ApplicationController
  def new
    @reviews = Review.new
  end

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews
  end
end
