class AddOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :phone
      t.timestamps
    end
    add_reference :donut_order_items, :customer, foreign_key: true
    create_table :orders do |t|
      t.belongs_to :customers
      t.timestamps
    end
  end
end
