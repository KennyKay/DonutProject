include ActionView::Helpers::NumberHelper
class DonutType < ApplicationRecord
    attribute :name, default: ""
    attribute :sold_out_until, default: nil
    attribute :discontinued, default: false
    attribute :price, default: 0
    validates :name, :price, presence: true

    scope :not_discontinued, -> { where(discontinued: false) }

    def is_sold_out
        return sold_out_until && Date.today <= sold_out_until
    end

    def full_name
        return "#{name} #{is_sold_out ? " (Sold out)" : "+#{number_to_currency(price)}"}"
    end
end
