class DonutType < ApplicationRecord
    attribute :name, default: ""
    attribute :sold_out_until, default: nil
    attribute :discontinued, default: false
    attribute :price, default: 0
    validates :name, :price, presence: true
end
