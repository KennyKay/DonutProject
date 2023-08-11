class DonutToppingsController < ApplicationController
  before_action :set_donut_topping, only: %i[ show edit update ]

  def index
    @donut_toppings = DonutTopping.all
  end

  def show
  end

  def new
    @donut_topping = DonutTopping.new
  end

  def edit
  end

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
    def set_donut_topping
      @donut_topping = DonutTopping.find(params[:id])
    end

    def donut_topping_params
      params.fetch(:donut_topping, {})
    end
end
