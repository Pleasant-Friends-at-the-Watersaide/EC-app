class Admins::OrderDetailsController < ApplicationController
  before_action :authenticate_admin!

  def update
     @order_detail = OrderDetail.find(params[:id])
     @order_detail.update(order_detail_params)
     @order = @order_detail.order

    if @order_detail.production_status == "製作中"
      @order.update(status: "製作中")
    elsif @order_detail.production_status == "製作完了"
      @order.update(status: "発送準備中")
    end
     flash[:notice] = "You have edited successfully."
     redirect_to admins_order_path(@order)
  end

  private
    def order_detail_params
    params.require(:order_detail).permit(:production_status, :order_id)
    end
end


