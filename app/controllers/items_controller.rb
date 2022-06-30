class ItemsController < ApplicationController
  def index
    @items=Item.all
   
  end

  def show
    @items=Item.find(params[:id])
  end

  def new
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to items_path, status: :see_other
  end

  def edit
    @item=Item.find(params[:id])
  end

  def update
    @item=Item.find(params[:id])
    
    if @item.update(item_params)
      redirect_to items_path, status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity)
  end

end
