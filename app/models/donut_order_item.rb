class DonutOrderItem < ApplicationRecord
  belongs_to :donut_type
  belongs_to :order
  has_and_belongs_to_many :donut_toppings
  attribute :quantity, default: 1

  def amount
    (donut_type.price + donut_toppings.sum(:price)) * quantity
  end
end
