require "pry"
class CashRegister

    attr_accessor :items, :total, :discount, :price, :quantity, :last_transaction
    

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.total = self.total + (price * quantity)
        quantity.times do 
            @items << title
        end
        self.last_transaction = price *quantity
    end

    def apply_discount
        if discount != 0
            self.total = total * ((100.0 - discount.to_f)/100.0)
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
end



































    #     #getting creative: make a helper method ?!?!for #add_item
#     # def last_transaction= (last_transaction)
#     #     @last_transaction= last_transaction
#     # end!??!

#     def add_item(title, price, quantity=1)
#         self.total += (price * quantity)
#         #total is determined by multiplying price of each 
#         #item by the number of this item: duh.
#         quantity.times do 
#             @items << title
#         end
#         self.last_transaction = price * quantity
#     end

#     # def apply_discount
#     #     self.each do |x| =
#     #     puts "After the discount, the total comes to #{price}."

#     #     @total -= 1
#     # end

#     # def apply_discount
#     #     if discount != 0
#     #       self.total = (total * ((100.0 - discount.to_f)/100)).to_i
#     #       "After the discount, the total comes to $#{self.total}."
#     #     else
#     #       "There is no discount to apply."
#     #     end
#     #   end

#     def void_last_transaction
#         self.total = self.total - self.last_transaction
#     end
# end

