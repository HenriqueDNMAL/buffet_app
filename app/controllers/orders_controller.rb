class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.status = "pending"

    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      render json: @order, status: :ok
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:table_id, :user_id, :status, order_items_attributes: [:menu_item_id, :quantity, :special_requests])
  end
end
