class Customers::ItemsController < ApplicationController
  def index
    @items = Item.page(params[:page]).per(6)
    @items_all = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
end
