class Customer < ApplicationRecord
  attribute :name
  attribute :phone
  has_many :orders
end
