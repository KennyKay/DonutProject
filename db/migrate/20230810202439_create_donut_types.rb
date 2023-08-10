class CreateDonutTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :donut_types do |t|
      t.string :name, null: false
      t.date :sold_out_until, default: nil
      t.boolean :discontinued, default: false, null: false
      t.decimal :price, default: 0

      t.timestamps
    end
  end
end
