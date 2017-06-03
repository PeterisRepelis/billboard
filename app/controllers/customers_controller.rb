class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def create
    Customer.create(customer_params)
    redirect_to request.referer
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :discount)
  end
end
