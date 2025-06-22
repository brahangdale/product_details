class DimensionsController < ApplicationController
  before_action :set_dimension, only: %i[ show edit update destroy ]

  # GET /dimensions or /dimensions.json
  def index
    @dimensions = Dimension.all
  end

  # GET /dimensions/1 or /dimensions/1.json
  def show
  end

  # GET /dimensions/new
  def new
    @dimension = Dimension.new
  end

  # GET /dimensions/1/edit
  def edit
  end

  # POST /dimensions or /dimensions.json
  def create
    @dimension = Dimension.new(dimension_params)

    respond_to do |format|
      if @dimension.save
        format.html { redirect_to root_path, notice: "Dimension was successfully created." }
        format.json { render :root, status: :created, location: @dimension }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dimension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dimensions/1 or /dimensions/1.json
  def update
    respond_to do |format|
      if @dimension.update(dimension_params)
        format.html { redirect_to root_path, notice: "Dimension was successfully updated." }
        format.json { render :root, status: :ok, location: @dimension }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dimension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dimensions/1 or /dimensions/1.json
  def destroy
    @dimension.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, status: :see_other, notice: "Dimension was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dimension
      @dimension = Dimension.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dimension_params
      params.require(:dimension).permit(:name, :unit)
    end
end
