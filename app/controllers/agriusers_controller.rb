class AgriusersController < ApplicationController
  before_action :set_agriuser, only: [:show, :edit, :update, :destroy]

  # GET /agriusers
  # GET /agriusers.json
  def index
    @agriusers = Agriuser.all
  end

  # GET /agriusers/1
  # GET /agriusers/1.json
  def show
  end

  # GET /agriusers/new
  def new
    @agriuser = Agriuser.new
  end

  # GET /agriusers/1/edit
  def edit
  end

  # POST /agriusers
  # POST /agriusers.json
  def create
    @agriuser = Agriuser.new(agriuser_params)

    respond_to do |format|
      if @agriuser.save
        format.html { redirect_to @agriuser, notice: 'Agriuser was successfully created.' }
        format.json { render :show, status: :created, location: @agriuser }
      else
        format.html { render :new }
        format.json { render json: @agriuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agriusers/1
  # PATCH/PUT /agriusers/1.json
  def update
    respond_to do |format|
      if @agriuser.update(agriuser_params)
        format.html { redirect_to @agriuser, notice: 'Agriuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @agriuser }
      else
        format.html { render :edit }
        format.json { render json: @agriuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agriusers/1
  # DELETE /agriusers/1.json
  def destroy
    @agriuser.destroy
    respond_to do |format|
      format.html { redirect_to agriusers_url, notice: 'Agriuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agriuser
      @agriuser = Agriuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agriuser_params
      params.require(:agriuser).permit(:name, :email)
    end
end
