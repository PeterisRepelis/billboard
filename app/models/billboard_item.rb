class BillboardItem < ActiveRecord::Base
  belongs_to :billboard_type
  belongs_to :agreement_billboard
  
  def to_s
    "#{name} [#{id}]"
  end  
end
