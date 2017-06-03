class AgreementsController < ApplicationController
  def index
    @agreements = Agreement.all
    @agreement = Agreement.new
    @agreement.agreement_billboards.build
  end

  def create
    Agreement.create(agreement_params)
    redirect_to request.referer
  end

  private

  def agreement_params
    params.require(:agreement).permit(:customer_id, :months_count, :days_count,
      agreement_billboards_attributes: [:id, :agreement_id, :billboard_item_id, :_destroy])
  end
end
