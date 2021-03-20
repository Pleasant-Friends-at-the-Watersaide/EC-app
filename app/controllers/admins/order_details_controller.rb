class Admins::OrderDetailsController < ApplicationController

  def update
     @order = Order.find(params[:id])
     @order.update(order_params)
     flash[:notice] = "You have edited successfully."
     @order = Order.find(params[:id])
     redirect_to request.referer
  end
end
