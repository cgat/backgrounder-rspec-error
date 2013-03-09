require 'test_helper'

class CaptureImagesControllerTest < ActionController::TestCase
  setup do
    @capture_image = capture_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capture_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capture_image" do
    assert_difference('CaptureImage.count') do
      post :create, capture_image: { image: @capture_image.image }
    end

    assert_redirected_to capture_image_path(assigns(:capture_image))
  end

  test "should show capture_image" do
    get :show, id: @capture_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @capture_image
    assert_response :success
  end

  test "should update capture_image" do
    put :update, id: @capture_image, capture_image: { image: @capture_image.image }
    assert_redirected_to capture_image_path(assigns(:capture_image))
  end

  test "should destroy capture_image" do
    assert_difference('CaptureImage.count', -1) do
      delete :destroy, id: @capture_image
    end

    assert_redirected_to capture_images_path
  end
end
