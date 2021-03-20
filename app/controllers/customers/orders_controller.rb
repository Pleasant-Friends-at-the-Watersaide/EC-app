class Customers::OrdersController < ApplicationController
  def new
  end

  def create
  end

  def index
    @orders = current_customer.orders
  end

  def show
  end

  def confirm
  end

  def thank
  end

end
