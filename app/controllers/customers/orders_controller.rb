class Customers::OrdersController < ApplicationController

  def new
  end

  def create
  end

  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])

  end

  def confirm
    @cart_items = current_customer.cart_items
  end

  def thank
  end

end
