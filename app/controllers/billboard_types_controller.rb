class BillboardTypesController < ApplicationController
  def index
    @billboard_types = BillboardType.all
    @billboard_type = BillboardType.new
  end

  def create
    BillboardType.create(billboard_types_params)
    redirect_to request.referer
  end

  private

  def billboard_types_params
    params.require(:billboard_type).permit(:description, :main_image, :price_per_day, :price_per_month)
  end
end
