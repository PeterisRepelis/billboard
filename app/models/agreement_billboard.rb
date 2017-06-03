class AgreementBillboard < ActiveRecord::Base
  belongs_to :agreement
  belongs_to :billboard_item
end
