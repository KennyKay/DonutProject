class DonutTypesController < ApplicationController
  before_action :set_donut_type, only: %i[ show edit update ]

  def index
    @donut_types = DonutType.all
  end

  def show
  end

  def new
    @donut_type = DonutType.new
  end

  def edit
  end

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
    def set_donut_type
      @donut_type = DonutType.find(params[:id])
    end

    def donut_type_params
      params.require(:donut_type).permit(:name, :sold_out_until, :discontinued, :price)
    end
end
