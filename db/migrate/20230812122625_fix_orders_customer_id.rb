class FixOrdersCustomerId < ActiveRecord::Migration[7.0]
  def change
    rename_column :orders, :customers_id, :customer_id
  end
end
