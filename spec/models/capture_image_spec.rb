require "spec_helper"
include ActionDispatch::TestProcess
describe CaptureImage do
  it "can be uploaded with backgrounder" do
    capture = Capture.create()
    image_upload=fixture_file_upload(Rails.root.join('spec','photos','color_repeat.jpg'))
    cimage = CaptureImage.create(image: image_upload, capture_id: capture.id)
    expect(cimage.image_tmp).to be_present
    sleep(2)
    expect(cimage.image_tmp).to_not be_present
  end
end