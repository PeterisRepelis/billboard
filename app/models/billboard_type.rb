class BillboardType < ActiveRecord::Base
  has_many :billboard_items

  has_attached_file :main_image,
    styles: {
      thumb: '100x75#',
      medium: '415x550#',
      big: '1000x800>'
    }, default_url: '/assets/default_image.jpg'

   validates_attachment_content_type :main_image, content_type: /\Aimage/

   def to_s
    description[0..30]
   end 
end
