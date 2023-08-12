class Order < ApplicationRecord
  belongs_to :customer
  has_many :donut_order_items
  enum :status, [ :processing, :delivery, :completed, :cancelled ]

  def amount
    donut_order_items.sum(:amount)
  end
end
