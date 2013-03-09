class CaptureImage < ActiveRecord::Base
  attr_accessible :image, :image_tmp
  
  mount_uploader :image, ImageUploader 
  store_in_background :image
end
