class Customers::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def cancel
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:notice] = "Successful update of user information."
      redirect_to customers_my_page_path
    else
      render 'edit'
    end
  end

  def bye
  end

  def cancel
  end

  private
    def customer_params
      params.require(:customer).permit(:last_name, :first_name, :kana_last_name, :kana_first_name, :email, :postcode, :address, :phone_number)
    end
end
