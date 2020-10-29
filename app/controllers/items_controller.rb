class ItemsController < ApplicationController

  def index 
    @items = Item.all
  end

  def new
    @item = Item.new
  end  

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end  
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to root_path
  end  
end
