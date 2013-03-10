class CaptureImage < ActiveRecord::Base
  attr_accessible :image, :image_tmp, :capture_id
  belongs_to :capture
  
  before_save :update_capture_camera
  
  mount_uploader :image, ImageUploader 
  store_in_background :image
  
  def update_capture_camera
    capture.set_camera_id("this is a test")
  end
end
