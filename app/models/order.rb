class Order < ActiveRecord::Base
    has_many :order_items, dependent: :destroy
    belongs_to :user
    belongs_to :address

    def total
        sum = 0
        order_items.each {|item| sum += item.subtotal}
        return sum
    end

end
