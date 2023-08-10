class CreateDonutOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :donut_order_items do |t|
      t.integer :quantity
      t.belongs_to :donut_type
      t.timestamps
    end

    create_table :donut_order_items_toppings, id: false do |t|
      t.belongs_to :donut_order_items
      t.belongs_to :donut_toppings
    end
  end
end
