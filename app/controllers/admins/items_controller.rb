class Admins::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:notice] = "商品の登録が完了しました。"
      redirect_to admins_item_path(@item)
    else
      render 'new'
    end
  end

  def index
    @items = Item.all
    @items = Item.page(params[:page]).per(10)
  end

  def show
  end

  def edit
  end

  def update
  end

  private
    def item_params
      params.require(:item).permit(:image, :name, :introduction, :genre_id, :price, :is_active)
    end

end
