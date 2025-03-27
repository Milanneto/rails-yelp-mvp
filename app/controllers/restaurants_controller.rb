class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new()
  end

  private

  def restaurant_sources
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
