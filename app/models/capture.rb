class Capture < ActiveRecord::Base
  attr_accessible :camera_id
  has_many :capture_images
  def set_camera_id(name)
    camera = Camera.create(name: name)
    self.camera_id = camera.id
  end
  
end
