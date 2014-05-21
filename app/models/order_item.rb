class OrderItem < ActiveRecord::Base
    validates_presence_of :product_id, :order_id

    belongs_to :order
    belongs_to :product

    def subtotal
        quantity * self.product.price
    end

end
