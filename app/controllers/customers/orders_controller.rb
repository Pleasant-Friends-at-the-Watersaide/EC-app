class Customers::OrdersController < ApplicationController

  def new
    @order = Order.new
    @addresses = Address.where(customer: current_customer)
  end

  def create
  end

  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def confirm
      @cart_items = current_customer.cart_items
      @order = Order.new #一旦初期化をするorderに何もない状態にする

      @order.payment_method = params[:order][:payment_method].to_i#数値化する
      #お届け先
  if  params[:order][:addresses_text] == "customers/address"#ご自身の住所("customers/address")を選んだら
      @order.postal_code = current_customer.postcode
      @order.address = current_customer.address
      @order.send_name = current_customer.last_name + current_customer.first_name
  elsif params[:order][:addresses_text] == "addresses/address" #登録済住所から選択("addresses/address")を選んだら
      address = Address.find(params[:order][:addresses_id]) #orderとaddresses_idは下記項目で共通するためローカル変数で代入する
      @order.postal_code = address.postal_code #郵便番号を取得
      @order.address = address.address #住所を取得
      @order.send_name = address.name #宛名取得
  elsif params[:order][:addresses_text] == "new_address"
      @address = Address.new #一旦初期化する
      @address.postal_code = params[:order][:postal_code] #郵便番号の取得
      @address.address = params[:order][:address] #住所の取得
      @address.name = params[:order][:send_name] #宛名の取得
      @address.customer_id = current_customer.id #customer_idの
      if @address.save
      @order.postal_code = @address.postal_code
      @order.send_name = @address.name
      @order.address = @address.address
      else
      render 'new'
      end
  end
  end

  def thank
  end

end
