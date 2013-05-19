class UserRolsController < ApplicationController
  # GET /user_rols
  # GET /user_rols.json
  def index
    @user_rols = UserRol.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_rols }
    end
  end

  # GET /user_rols/1
  # GET /user_rols/1.json
  def show
    @user_rol = UserRol.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_rol }
    end
  end

  # GET /user_rols/new
  # GET /user_rols/new.json
  def new
    @user_rol = UserRol.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_rol }
    end
  end

  # GET /user_rols/1/edit
  def edit
    @user_rol = UserRol.find(params[:id])
  end

  # POST /user_rols
  # POST /user_rols.json
  def create
    @user_rol = UserRol.new(params[:user_rol])

    respond_to do |format|
      if @user_rol.save
        format.html { redirect_to @user_rol, notice: 'User rol was successfully created.' }
        format.json { render json: @user_rol, status: :created, location: @user_rol }
      else
        format.html { render action: "new" }
        format.json { render json: @user_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_rols/1
  # PUT /user_rols/1.json
  def update
    @user_rol = UserRol.find(params[:id])

    respond_to do |format|
      if @user_rol.update_attributes(params[:user_rol])
        format.html { redirect_to @user_rol, notice: 'User rol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_rols/1
  # DELETE /user_rols/1.json
  def destroy
    @user_rol = UserRol.find(params[:id])
    @user_rol.destroy

    respond_to do |format|
      format.html { redirect_to user_rols_url }
      format.json { head :no_content }
    end
  end
end
