class MenuItemsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu_items = @restaurant.menu_items.where(is_available: true)
  end
end
