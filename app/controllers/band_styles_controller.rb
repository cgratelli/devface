class BandStylesController < ApplicationController
  # GET /band_styles
  # GET /band_styles.json
  def index
    @band_styles = BandStyle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @band_styles }
    end
  end

  # GET /band_styles/1
  # GET /band_styles/1.json
  def show
    @band_style = BandStyle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @band_style }
    end
  end

  # GET /band_styles/new
  # GET /band_styles/new.json
  def new
    @band_style = BandStyle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @band_style }
    end
  end

  # GET /band_styles/1/edit
  def edit
    @band_style = BandStyle.find(params[:id])
  end

  # POST /band_styles
  # POST /band_styles.json
  def create
    @band_style = BandStyle.new(params[:band_style])

    respond_to do |format|
      if @band_style.save
        format.html { redirect_to @band_style, notice: 'Band style was successfully created.' }
        format.json { render json: @band_style, status: :created, location: @band_style }
      else
        format.html { render action: "new" }
        format.json { render json: @band_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /band_styles/1
  # PUT /band_styles/1.json
  def update
    @band_style = BandStyle.find(params[:id])

    respond_to do |format|
      if @band_style.update_attributes(params[:band_style])
        format.html { redirect_to @band_style, notice: 'Band style was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @band_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_styles/1
  # DELETE /band_styles/1.json
  def destroy
    @band_style = BandStyle.find(params[:id])
    @band_style.destroy

    respond_to do |format|
      format.html { redirect_to band_styles_url }
      format.json { head :no_content }
    end
  end
end
