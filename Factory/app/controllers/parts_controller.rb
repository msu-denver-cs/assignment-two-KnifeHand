class PartsController < ApplicationController
  before_action :set_part, only: [:show, :edit, :update, :destroy]

  # GET /parts
  # GET /parts.json
  def index
    @parts = Part.all
  end

  # GET /parts/1
  # GET /parts/1.json
  def show
  end

  # GET /parts/new
  def new
    @parts = Part.new
    @cars = Car.all
  end

  # GET /parts/1/edit
  def edit
    @cars = Car.all
  end

  # POST /parts
  # POST /parts.json
  def create
    @parts = Part.new(parts_params)

    respond_to do |format|
      if @parts.save
        format.html { redirect_to @parts, notice: 'Part was successfully created.' }
        format.json { render :show, status: :created, location: @parts }
      else
        format.html { render :new }
        format.json { render json: @parts.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parts/1
  # PATCH/PUT /parts/1.json
  def update
    respond_to do |format|
      if @part.update(parts_params)
        format.html { redirect_to @part, notice: 'Part was successfully updated.' }
        format.json { render :show, status: :ok, location: @parts }
      else
        format.html { render :edit }
        format.json { render json: @parts.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parts/1
  # DELETE /parts/1.json
  def destroy
    @part.destroy
    respond_to do |format|
      format.html { redirect_to parts_url, notice: 'Part was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_part
    @parts = Part.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
  def part_params
    params.require(:part).permit(:title, :description, :image_url, :price)
  end

  def print_part_name
    3
  end
end
