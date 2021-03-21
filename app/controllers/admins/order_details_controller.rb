class Admins::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!

  def update
     @order_detail = Order_detail.find(params[:id])
     @order.update(order_detail_params)
     flash[:notice] = "You have edited successfully."
     redirect_to request.referer
  end

  private
    def order_detail_params
    params.require(:order_detail).permit(:production_status)
    end
end


