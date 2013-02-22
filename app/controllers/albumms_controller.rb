class AlbummsController < ApplicationController
  # GET /albumms
  # GET /albumms.json
  def index
    @albumms = Albumm.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albumms }
    end
  end

  # GET /albumms/1
  # GET /albumms/1.json
  def show
    @albumm = Albumm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @albumm }
    end
  end

  # GET /albumms/new
  # GET /albumms/new.json
  def new
    @albumm = Albumm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @albumm }
    end
  end

  # GET /albumms/1/edit
  def edit
    @albumm = Albumm.find(params[:id])
  end

  # POST /albumms
  # POST /albumms.json
  def create
    @albumm = Albumm.new(params[:albumm])

    respond_to do |format|
      if @albumm.save
        format.html { redirect_to @albumm, notice: 'Albumm was successfully created.' }
        format.json { render json: @albumm, status: :created, location: @albumm }
      else
        format.html { render action: "new" }
        format.json { render json: @albumm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albumms/1
  # PUT /albumms/1.json
  def update
    @albumm = Albumm.find(params[:id])

    respond_to do |format|
      if @albumm.update_attributes(params[:albumm])
        format.html { redirect_to @albumm, notice: 'Albumm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @albumm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albumms/1
  # DELETE /albumms/1.json
  def destroy
    @albumm = Albumm.find(params[:id])
    @albumm.destroy

    respond_to do |format|
      format.html { redirect_to albumms_url }
      format.json { head :no_content }
    end
  end
end
