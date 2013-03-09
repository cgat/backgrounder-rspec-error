require "spec_helper"
include ActionDispatch::TestProcess
describe CaptureImage do
  it "can be uploaded with backgrounder" do
    image_upload=fixture_file_upload(Rails.root.join('spec','photos','color_repeat.jpg'))
    cimage = CaptureImage.create(image: image_upload)
    expect(cimage).to be_present
  end
end