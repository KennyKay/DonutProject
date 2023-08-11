# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DonutType.destroy_all
DonutTopping.destroy_all
DonutType.create!(name: "Raised", price: 1.0, discontinued: false, sold_out_until: Date.today)
DonutType.create!(name: "Cake", price: 1.5, discontinued: false)
DonutType.create!(name: "Bars", price: 2.0, discontinued: false)
DonutType.create!(name: "Twists", price: 3.0, discontinued: false)
DonutType.create!(name: "Fritters", price: 1.3, discontinued: false)
DonutType.create!(name: "Moist", price: 3.99, discontinued: true)

DonutTopping.create!(name: "Glazed", price: 0.5, discontinued: false, sold_out_until: Date.today)
DonutTopping.create!(name: "Sugar", price: 0.5, discontinued: false)
DonutTopping.create!(name: "Powder", price: 0.5, discontinued: false)
DonutTopping.create!(name: "Sprinkles", price: 0.5, discontinued: false)
DonutTopping.create!(name: "Fillings", price: 1.0, discontinued: false)