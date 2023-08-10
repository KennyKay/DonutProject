class DonutType < ApplicationRecord
    attribute :name, default: ""
    attribute :sold_out_until, default: nil
    attribute :discontinued, default: false, null: false
    attribute :price, default: 0
    validates :name, :discontinued, :price, presence: true
end
