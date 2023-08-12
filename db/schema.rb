# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_08_12_125113) do
  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donut_order_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "donut_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "order_id"
    t.index ["donut_type_id"], name: "index_donut_order_items_on_donut_type_id"
    t.index ["order_id"], name: "index_donut_order_items_on_order_id"
  end

  create_table "donut_order_items_toppings", id: false, force: :cascade do |t|
    t.integer "donut_order_item_id"
    t.integer "donut_topping_id"
    t.index ["donut_order_item_id"], name: "index_donut_order_items_toppings_on_donut_order_item_id"
    t.index ["donut_topping_id"], name: "index_donut_order_items_toppings_on_donut_topping_id"
  end

  create_table "donut_toppings", force: :cascade do |t|
    t.string "name", null: false
    t.date "sold_out_until"
    t.boolean "discontinued", default: false, null: false
    t.decimal "price", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donut_types", force: :cascade do |t|
    t.string "name", null: false
    t.date "sold_out_until"
    t.boolean "discontinued", default: false, null: false
    t.decimal "price", default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  add_foreign_key "donut_order_items", "customers"
end
