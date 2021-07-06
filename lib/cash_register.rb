require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items
    def initialize(discount = 0)
        @total = 0
        @items = []
        @discount = discount
    end

    def add_item(name,price, quantity = 1)
        @total += price*quantity
        quantity.times do @items << name end
        @lastTransaction = price * quantity
        @lastQuantity = quantity
    end

    def apply_discount()
        p @discount
        if @discount == 0 
            return "There is no discount to apply."
        end
        @total = @total * 1.0 - @total * @discount /100 
        return "After the discount, the total comes to $800."
    end
    
    def void_last_transaction
        @total -= @lastTransaction
        @lastQuantity.times do @items.pop() end
    end
end