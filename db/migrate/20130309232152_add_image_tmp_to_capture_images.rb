class AddImageTmpToCaptureImages < ActiveRecord::Migration
  def change
    add_column :capture_images, :image_tmp, :string
  end
end
