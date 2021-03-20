class Customers::OrdersController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
    @order = Order.find(params[:id])

  end

  def confirm
  end

  def thank
  end

end
