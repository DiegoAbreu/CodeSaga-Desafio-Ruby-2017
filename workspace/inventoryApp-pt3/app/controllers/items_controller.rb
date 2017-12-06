class ItemsController < ApplicationController
  def new
    @item = Item.new
    @item_category = ItemCategory.all
  end

  def create
    @item = Item.create(item_params)
    redirect_to @item
  end

  def show
    @item = Item.find(params[:id])
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :features, :asset_number)
  end
end
