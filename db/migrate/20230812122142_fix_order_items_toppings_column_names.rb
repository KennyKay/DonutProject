class FixOrderItemsToppingsColumnNames < ActiveRecord::Migration[7.0]
  def change
    rename_column :donut_order_items_toppings, :donut_toppings_id, :donut_topping_id
    rename_column :donut_order_items_toppings, :donut_order_items_id, :donut_order_item_id
  end
end
