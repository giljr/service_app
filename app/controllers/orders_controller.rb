# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  def index
    @orders = Order.all
    # render :index
  end
end
