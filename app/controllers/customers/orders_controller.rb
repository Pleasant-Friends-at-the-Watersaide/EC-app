class Customers::OrdersController < ApplicationController
  
  def index
  end
  
  def show
  end

  
  def new
  end

  def create
  end
  
  
  def confirm
    @cart_items = current_customer.cart_items
  end
  
  def thank
  end
  
end
