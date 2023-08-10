class DonutToppingsController < ApplicationController
  before_action :set_donut_topping, only: %i[ show edit update destroy ]

  # GET /donut_toppings or /donut_toppings.json
  def index
    @donut_toppings = DonutTopping.all
  end

  # GET /donut_toppings/1 or /donut_toppings/1.json
  def show
  end

  # GET /donut_toppings/new
  def new
    @donut_topping = DonutTopping.new
  end

  # GET /donut_toppings/1/edit
  def edit
  end

  # POST /donut_toppings or /donut_toppings.json
  def create
    @donut_topping = DonutTopping.new(donut_topping_params)

    respond_to do |format|
      if @donut_topping.save
        format.html { redirect_to donut_topping_url(@donut_topping), notice: "Donut topping was successfully created." }
        format.json { render :show, status: :created, location: @donut_topping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @donut_topping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donut_toppings/1 or /donut_toppings/1.json
  def update
    respond_to do |format|
      if @donut_topping.update(donut_topping_params)
        format.html { redirect_to donut_topping_url(@donut_topping), notice: "Donut topping was successfully updated." }
        format.json { render :show, status: :ok, location: @donut_topping }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @donut_topping.errors, status: :unprocessable_entity }
      end
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donut_topping
      @donut_topping = DonutTopping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def donut_topping_params
      params.fetch(:donut_topping, {})
    end
end
