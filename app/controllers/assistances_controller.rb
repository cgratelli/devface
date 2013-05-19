class AssistancesController < ApplicationController
  # GET /assistances
  # GET /assistances.json
  def index
    @assistances = Assistance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assistances }
    end
  end

  # GET /assistances/1
  # GET /assistances/1.json
  def show
    @assistance = Assistance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assistance }
    end
  end

  # GET /assistances/new
  # GET /assistances/new.json
  def new
    @assistance = Assistance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assistance }
    end
  end

  # GET /assistances/1/edit
  def edit
    @assistance = Assistance.find(params[:id])
  end

  # POST /assistances
  # POST /assistances.json
  def create
    @assistance = Assistance.new(params[:assistance])

    respond_to do |format|
      if @assistance.save
        format.html { redirect_to @assistance, notice: 'Assistance was successfully created.' }
        format.json { render json: @assistance, status: :created, location: @assistance }
      else
        format.html { render action: "new" }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assistances/1
  # PUT /assistances/1.json
  def update
    @assistance = Assistance.find(params[:id])

    respond_to do |format|
      if @assistance.update_attributes(params[:assistance])
        format.html { redirect_to @assistance, notice: 'Assistance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assistances/1
  # DELETE /assistances/1.json
  def destroy
    @assistance = Assistance.find(params[:id])
    @assistance.destroy

    respond_to do |format|
      format.html { redirect_to assistances_url }
      format.json { head :no_content }
    end
  end
end
