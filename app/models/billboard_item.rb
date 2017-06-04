class BillboardItem < ActiveRecord::Base
  belongs_to :billboard_type
  belongs_to :agreement_billboard
  
  def to_s
    if is_broken
      broken = 'salauzts'
    else
      broken = 'vesals'
    end  
    "#{name} identifikators: #{id}, tehniskais stāvoklis: #{technical_state}, vizuālais stāvoklis: #{visual_state}, #{broken}"
  end  
end
