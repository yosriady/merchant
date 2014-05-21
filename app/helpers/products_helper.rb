module ProductsHelper

def cents_price(price)
    "#{(price*100).floor} cents"
end


end
