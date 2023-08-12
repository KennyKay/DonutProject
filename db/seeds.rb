# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

DonutType.destroy_all
DonutTopping.destroy_all
Customer.destroy_all
DonutOrderItem.destroy_all
Order.destroy_all

donut_type_1 = DonutType.create!(name: "Raised", price: 1.0, discontinued: false, sold_out_until: Date.today)
donut_type_2 = DonutType.create!(name: "Cake", price: 1.5, discontinued: false)
DonutType.create!(name: "Bars", price: 2.0, discontinued: false)
DonutType.create!(name: "Twists", price: 3.0, discontinued: false)
DonutType.create!(name: "Fritters", price: 1.3, discontinued: false)
DonutType.create!(name: "Moist", price: 3.99, discontinued: true)

donut_topping_1 = DonutTopping.create!(name: "Glazed", price: 0.5, discontinued: false)
donut_topping_2 = DonutTopping.create!(name: "Sugar", price: 0.5, discontinued: false)
donut_topping_3 = DonutTopping.create!(name: "Powder", price: 0.5, discontinued: false)
donut_topping_4 = DonutTopping.create!(name: "Sprinkles", price: 0.5, discontinued: false)
donut_topping_5 = DonutTopping.create!(name: "Fillings", price: 1.0, discontinued: false, sold_out_until: Date.today)

customer_1 = Customer.create(name: "Kenny K", phone: "4388863386")

donut_order_item_1 = DonutOrderItem.create(donut_type: donut_type_1, donut_toppings: [donut_topping_1, donut_topping_2])
donut_order_item_2 = DonutOrderItem.create(donut_type: donut_type_2, donut_toppings: [donut_topping_3, donut_topping_4])

order_1 = Order.create!(customer: customer_1, donut_order_items: [donut_order_item_1, donut_order_item_2])