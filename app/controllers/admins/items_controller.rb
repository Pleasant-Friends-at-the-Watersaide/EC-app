class Admins::ItemsController < ApplicationController

  def new
  end

  def create
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


end
