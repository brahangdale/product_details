class OrderingInformationsController < ApplicationController
  before_action :set_ordering_information, only: %i[ show edit update destroy ]

  # GET /ordering_informations or /ordering_informations.json
  def index
    @ordering_informations = OrderingInformation.all
  end

  # GET /ordering_informations/1 or /ordering_informations/1.json
  def show
  end

  # GET /ordering_informations/new
  def new
    @ordering_information = OrderingInformation.new
  end

  # GET /ordering_informations/1/edit
  def edit
  end

  # POST /ordering_informations or /ordering_informations.json
  def create
    @ordering_information = OrderingInformation.new(ordering_information_params)

    respond_to do |format|
      if @ordering_information.save
        format.html { redirect_to root_path, notice: "Ordering information was successfully created." }
        format.json { render :root, status: :created, location: @ordering_information }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordering_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordering_informations/1 or /ordering_informations/1.json
  def update
    respond_to do |format|
      if @ordering_information.update(ordering_information_params)
        format.html { redirect_to root_path, notice: "Ordering information was successfully updated." }
        format.json { render :root, status: :ok, location: @ordering_information }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordering_information.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordering_informations/1 or /ordering_informations/1.json
  def destroy
    @ordering_information.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, status: :see_other, notice: "Ordering information was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordering_information
      @ordering_information = OrderingInformation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ordering_information_params
      params.require(:ordering_information).permit(:cat_no, :description, :std_pack, :image)
    end
end
