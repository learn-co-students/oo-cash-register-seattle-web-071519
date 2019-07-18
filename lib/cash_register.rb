class CashRegister
    #last transaction also included up here to reference later on
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end


    def add_item(title, price, quantity = 1)
        @total += price * quantity
        quantity.times do
            @items << title
        end
        # referencing last transaction during add_item method so that we can grab that value later for the void method
        self.last_transaction = price * quantity
    end

    def apply_discount
        if @discount > 0
            @total *= ((100 - @discount) * 0.01)
            return "After the discount, the total comes to $#{@total.to_i}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= self.last_transaction
    end

end