class TechnicalsController < ApplicationController
  before_action :set_technical, only: %i[ show edit update destroy ]

  # GET /technicals or /technicals.json
  def index
    @technicals = Technical.all
  end

  # GET /technicals/1 or /technicals/1.json
  def show
  end

  # GET /technicals/new
  def new
    @technical = Technical.new
  end

  # GET /technicals/1/edit
  def edit
  end

  # POST /technicals or /technicals.json
  def create
    @technical = Technical.new(technical_params)

    respond_to do |format|
      if @technical.save
        format.html { redirect_to root_path, notice: "Technical was successfully created." }
        format.json { render :root, status: :created, location: @technical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @technical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /technicals/1 or /technicals/1.json
  def update
    respond_to do |format|
      if @technical.update(technical_params)
        format.html { redirect_to root_path, notice: "Technical was successfully updated." }
        format.json { render :root, status: :ok, location: @technical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @technical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /technicals/1 or /technicals/1.json
  def destroy
    @technical.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, status: :see_other, notice: "Technical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_technical
      @technical = Technical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def technical_params
      params.require(:technical).permit(:title, :value)
    end
end
