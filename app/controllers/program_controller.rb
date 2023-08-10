class ProgramController < ApplicationController
  def index
  end


  def add_various_donut_types
    DonutType.create!(name: "Raised", price: 1.0, discontinued: false)
    DonutType.create!(name: "Cake", price: 1.5, discontinued: false)
    DonutType.create!(name: "Bars", price: 2.0, discontinued: false)
    DonutType.create!(name: "Twists", price: 3.0, discontinued: false)
    DonutType.create!(name: "Fritters", price: 1.3, discontinued: false)
    redirect_to donut_types_path
  end

  
  def add_various_donut_toppings
    DonutTopping.create!(name: "Glazed", price: 0.5, discontinued: false)
    DonutTopping.create!(name: "Sugar", price: 0.5, discontinued: false)
    DonutTopping.create!(name: "Powder", price: 0.5, discontinued: false)
    DonutTopping.create!(name: "Sprinkles", price: 0.5, discontinued: false)
    DonutTopping.create!(name: "Fillings", price: 1.0, discontinued: false)
    redirect_to donut_toppings_path
  end
end
