class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
  end

  def update
     @order = Order.find(params[:id])
     @order.update(order_params)
     @order_detail = @order.order_details

     if @order.status == "入金確認"
      @order_detail.update_all(production_status: 1)
     end
     flash[:notice] = "You have edited successfully."
     redirect_to admins_order_path(@order)
  end

  private
    def order_params
    params.require(:order).permit(:status)
    end
end
