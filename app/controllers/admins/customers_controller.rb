class Admins::CustomersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @customers = Customer.all.page(params[:page]).per(10)
  end

  def edit
  end

  def show
  end

  def update
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name,:last_name,:kana_first_name,:kana_last_name,:postal_code,:residence,:phone_number,:email,:is_valid)
  end
end
