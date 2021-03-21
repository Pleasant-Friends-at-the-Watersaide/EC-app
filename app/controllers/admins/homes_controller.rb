class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!
  
  def top
    path = Rails.application.routes.recognize_path(request.referer)
    if path[:controller] == "admins/customers" && path[:action] == "show"
     @customer = Customer.find(params[:id])
     @orders = @customer.orders.page(params[:page]).per(10)
    else
     @orders = Order.page(params[:page]).per(10)
    end
  end
end
