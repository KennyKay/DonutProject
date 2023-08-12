class AddOrderIdToDonutOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_reference :donut_order_items, :order, index: true
  end
end
