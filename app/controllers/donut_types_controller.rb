class DonutTypesController < ApplicationController
  before_action :set_donut_type, only: %i[ show edit update ]

  # GET /donut_types or /donut_types.json
  def index
    @donut_types = DonutType.all
  end

  # GET /donut_types/1 or /donut_types/1.json
  def show
  end

  # GET /donut_types/new
  def new
    @donut_type = DonutType.new
  end

  # GET /donut_types/1/edit
  def edit
  end

  # POST /donut_types or /donut_types.json
  def create
    @donut_type = DonutType.new(donut_type_params)

    respond_to do |format|
      if @donut_type.save
        format.html { redirect_to donut_type_url(@donut_type), notice: "Donut type was successfully created." }
        format.json { render :show, status: :created, location: @donut_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @donut_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donut_types/1 or /donut_types/1.json
  def update
    respond_to do |format|
      if @donut_type.update(donut_type_params)
        format.html { redirect_to donut_type_url(@donut_type), notice: "Donut type was successfully updated." }
        format.json { render :show, status: :ok, location: @donut_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @donut_type.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donut_type
      @donut_type = DonutType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donut_type_params
      params.require(:donut_type).permit(:name, :sold_out_until, :discontinued, :price)
    end
end
