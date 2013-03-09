class CaptureImagesController < ApplicationController
  # GET /capture_images
  # GET /capture_images.json
  def index
    @capture_images = CaptureImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @capture_images }
    end
  end

  # GET /capture_images/1
  # GET /capture_images/1.json
  def show
    @capture_image = CaptureImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @capture_image }
    end
  end

  # GET /capture_images/new
  # GET /capture_images/new.json
  def new
    @capture_image = CaptureImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @capture_image }
    end
  end

  # GET /capture_images/1/edit
  def edit
    @capture_image = CaptureImage.find(params[:id])
  end

  # POST /capture_images
  # POST /capture_images.json
  def create
    @capture_image = CaptureImage.new(params[:capture_image])

    respond_to do |format|
      if @capture_image.save
        format.html { redirect_to @capture_image, notice: 'Capture image was successfully created.' }
        format.json { render json: @capture_image, status: :created, location: @capture_image }
      else
        format.html { render action: "new" }
        format.json { render json: @capture_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /capture_images/1
  # PUT /capture_images/1.json
  def update
    @capture_image = CaptureImage.find(params[:id])

    respond_to do |format|
      if @capture_image.update_attributes(params[:capture_image])
        format.html { redirect_to @capture_image, notice: 'Capture image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @capture_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /capture_images/1
  # DELETE /capture_images/1.json
  def destroy
    @capture_image = CaptureImage.find(params[:id])
    @capture_image.destroy

    respond_to do |format|
      format.html { redirect_to capture_images_url }
      format.json { head :no_content }
    end
  end
end
