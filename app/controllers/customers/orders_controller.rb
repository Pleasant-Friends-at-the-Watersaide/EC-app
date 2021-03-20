class Customers::OrdersController < ApplicationController
  def new
    @order = Order.new
    @addresses = Address.where(customer: current_customer)
  end

  def create
  end

  def index
  end

  def show
  end

  def confirm
  end

  def thank
  end

end
