class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @menu_items = @restaurant.menu_items.where(is_available: true)
  end
end

