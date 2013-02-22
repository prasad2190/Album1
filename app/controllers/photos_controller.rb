class PhotosController < ApplicationController
  # GET /photos
  # GET /photos.json
before_filter :load_albumm

  def index
    @photos = @albumm.photos

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = @albumm.photos.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/new
  # GET /photos/new.json
  def new
    @photo = @albumm.photos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end

  # GET /photos/1/edit
  def edit
    @photo = @albumm.photos.find(params[:id])
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = @albumm.photos.new(params[:photo])

    respond_to do |format|
      if @photo.save
        format.html { redirect_to albumm_photos_path(@albumm), notice: 'Photo was successfully created.' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /photos/1
  # PUT /photos/1.json
  def update
    @photo = @albumm.photos.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to albumm_photos_path(@albumm), notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = @albumm.photos.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to albumm_photos_path(@albumm) }
      format.json { head :no_content }
    end
  end

  def load_albumm
    @albumm=Albumm.find(params[:albumm_id])
  end
end
