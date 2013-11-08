class ReviewsController < ApplicationController

def create
	@item = Item.find(params[:item_id])
	@review = @item.reviews.create(params[:review].permit(:reviewer,:body))
	redirect_to item_path(@item)
end

end
