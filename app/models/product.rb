class Product < ActiveRecord::Base
    after_validation :cents_to_dollars
    validates_numericality_of :price

    def price=(input)
        input.to_s.delete!("$")
        super
    end

    def cents_to_dollars
        if self.price
            self.price = price.to_f/100
        end
    end
end
