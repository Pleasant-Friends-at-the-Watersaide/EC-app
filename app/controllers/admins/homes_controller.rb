class Admins::HomesController < ApplicationController
  def top
    path = Rails.application.routes.recognize_path(request.referer)
    if path[:controller] == "admins/customers" && path[:action] == "show"
     @customer = Customer.find(params[:id])   
     @orders = @customer.order.page(params[:page]).per(10)
    else
     @orders = Order.page(params[:page]).per(10)
    end
  end
end
