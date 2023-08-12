class RemoveCustomerFromDonutItems2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :donut_order_items, :customer
  end
end
