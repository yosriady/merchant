class OrderItem < ActiveRecord::Base
    validates_presence_of :product_id, :order_id
    validates :quantity, numericality: {greater_than: 0, only_integer: true}

    belongs_to :order
    belongs_to :product

    def subtotal
        if quantity && self.product.price
            quantity * self.product.price
        else
            0
        end
    end

end
