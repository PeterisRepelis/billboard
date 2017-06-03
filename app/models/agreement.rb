class Agreement < ActiveRecord::Base
  belongs_to :customer
  has_many :agreement_billboards
  has_many :billboards, through: :agreement_billboards

  accepts_nested_attributes_for :agreement_billboards

  validates :customer_id, presence: true

  def total_amount
    sum = 0
    agreement_billboards.each do |ab|
      # raise ab.billboard_item.inspect
      days_amount = (ab.billboard_item.billboard_type.price_per_day * days_count)
      months_amount = (ab.billboard_item.billboard_type.price_per_month * months_count)
      sum = sum + days_amount + months_amount
    end
    sum
  end

  def total_amount_with_discount
    total_amount - (total_amount * (customer.discount.to_f / 100))
  end
end
