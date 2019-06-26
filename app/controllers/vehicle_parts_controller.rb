class VehiclePartsController < ApplicationController
  before_action :set_vehicle_part, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_parts
  # GET /vehicle_parts.json
  def index
    @vehicle_parts = VehiclePart.page(params[:page])
  end

  # GET /vehicle_parts/1
  # GET /vehicle_parts/1.json
  def show
  end

  # GET /vehicle_parts/new
  def new
    @vehicle_part = VehiclePart.new
  end

  # GET /vehicle_parts/1/edit
  def edit
  end

  # POST /vehicle_parts
  # POST /vehicle_parts.json
  def create
    @vehicle_part = VehiclePart.new(vehicle_part_params)

    respond_to do |format|
      if @vehicle_part.save
        format.html { redirect_to @vehicle_part, notice: 'Vehicle part was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_part }
      else
        format.html { render :new }
        format.json { render json: @vehicle_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_parts/1
  # PATCH/PUT /vehicle_parts/1.json
  def update
    respond_to do |format|
      if @vehicle_part.update(vehicle_part_params)
        format.html { redirect_to @vehicle_part, notice: 'Vehicle part was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_part }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_parts/1
  # DELETE /vehicle_parts/1.json
  def destroy
    @vehicle_part.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_parts_url, notice: 'Vehicle part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_part
      @vehicle_part = VehiclePart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_part_params
      params.require(:vehicle_part).permit(:vehicle_id, :part_id)
    end
end
