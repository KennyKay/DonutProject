class CreateDonutTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :donut_types do |t|
      t.string :name
      t.date :sold_out_until
      t.boolean :discontinued
      t.decimal :price

      t.timestamps
    end
  end
end
