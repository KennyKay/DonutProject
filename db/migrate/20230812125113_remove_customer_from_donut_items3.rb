class RemoveCustomerFromDonutItems3 < ActiveRecord::Migration[7.0]
  def change
    remove_index :donut_order_items, :customer_id
  end
end
