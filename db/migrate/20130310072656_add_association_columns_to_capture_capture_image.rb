class AddAssociationColumnsToCaptureCaptureImage < ActiveRecord::Migration
  def change
    add_column :capture_images, :capture_id, :integer
  end
end
