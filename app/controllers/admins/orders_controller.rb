class Admins::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def update
     @order = Order.find(params[:id])
  if @order.update(order_params)
    flash[:notice] = "You have edited successfully."
     @order = Order.find(params[:id])
     redirect_to admins_order_path
  else
     render :edit
  end
  end

  private
    def order_params
    params.require(:order).permit(:status)
    end
end
