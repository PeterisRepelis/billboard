class BillboardItemsController < ApplicationController
  def index
    @billboards = BillboardItem.all
    @billboard = BillboardItem.new
  end

  def create
    BillboardItem.create(billboard_items_params)
    redirect_to request.referer
  end

  private

  def billboard_items_params
    params.require(:billboard_item).permit(:is_broken, :visual_state, :technical_state, :name, :billboard_type_id, :is_unusable)
  end
end

