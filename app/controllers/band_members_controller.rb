class BandMembersController < ApplicationController
  # GET /band_members
  # GET /band_members.json
  def index
    @band_members = BandMember.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @band_members }
    end
  end

  # GET /band_members/1
  # GET /band_members/1.json
  def show
    @band_member = BandMember.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @band_member }
    end
  end

  # GET /band_members/new
  # GET /band_members/new.json
  def new
    @band_member = BandMember.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @band_member }
    end
  end

  # GET /band_members/1/edit
  def edit
    @band_member = BandMember.find(params[:id])
  end

  # POST /band_members
  # POST /band_members.json
  def create
    @band_member = BandMember.new(params[:band_member])

    respond_to do |format|
      if @band_member.save
        format.html { redirect_to @band_member, notice: 'Band member was successfully created.' }
        format.json { render json: @band_member, status: :created, location: @band_member }
      else
        format.html { render action: "new" }
        format.json { render json: @band_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /band_members/1
  # PUT /band_members/1.json
  def update
    @band_member = BandMember.find(params[:id])

    respond_to do |format|
      if @band_member.update_attributes(params[:band_member])
        format.html { redirect_to @band_member, notice: 'Band member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @band_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /band_members/1
  # DELETE /band_members/1.json
  def destroy
    @band_member = BandMember.find(params[:id])
    @band_member.destroy

    respond_to do |format|
      format.html { redirect_to band_members_url }
      format.json { head :no_content }
    end
  end
end
