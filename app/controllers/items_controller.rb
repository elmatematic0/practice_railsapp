class ItemsController < ApplicationController

  # def index
  # end
  
  def show
    @item = Item.find(params[:id])   #We believe redirect_to invokes show method and expects @item
  end

  def new
    # @item = Item.new
  end
  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item  #what is going on with redirect_to. We expected to redirect to the show method.
  end 
  
  # def edit
  # end

  # def update
  # end

  # def destroy
  # end

private
  def item_params
      params.require(:item).permit(:title, :description, :email, :address)
    end 
end
