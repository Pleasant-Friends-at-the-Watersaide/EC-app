class Customers::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses = current_customer.addresses
  end

  def create
    @address = Address.new(address_params)
    @address.customer_id = current_customer.id
    @addresses = current_customer.address
    if @address.save
      redirect_to request.referer
    else
      @addresses = current_customer.addresses
      render 'index'
    end
  end

  def destroy
    @address = Address.find(params[:id])
    @address.destroy
    redirect_to request.referer
  end

  def edit
    @address =  Address.find(params[:id])
  end

  def update
    @address = Address.find(params[:id])
	  if @address.update(address_params)
     redirect_to addresses_path
    else
	   render "edit"
	  end
  end

  private

  def address_params
    params.require(:address).permit(:postal_code, :address, :name)
  end

end
