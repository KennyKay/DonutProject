class DonutOrderItem < ApplicationRecord
  belongs_to :donut_type
  has_and_belongs_to_many :donut_toppings
  attribute :quantity, default: 1
end
