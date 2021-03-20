class Customers::OrdersController < ApplicationController

  def new
    @order = Order.new
    @addresses = Address.where(customer: current_customer)
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
