# CashRegister
#   ::new
#     sets an instance variable @total on initialization to zero (FAILED - 1)
#     optionally takes an employee discount on initialization (FAILED - 2)
#   #total
#     returns the current total (FAILED - 3)
#   #add_item
#     accepts a title and a price and increases the total (FAILED - 4)
#     also accepts an optional quantity (FAILED - 5)
#     doesn't forget about the previous total (FAILED - 6)
#   #apply_discount
#     the cash register was initialized with an employee discount
#       applies the discount to the total price (FAILED - 7)
#       returns success message with updated total (FAILED - 8)
#       reduces the total (FAILED - 9)
#     the cash register was not initialized with an employee discount
#       returns a string error message that there is no discount to apply (FAILED - 10)
#   #items
#     returns an array containing all items that have been added (FAILED - 11)
#   #void_last_transaction
#     subtracts the last transaction from the total (FAILED - 12)

require 'pry'

class CashRegister

attr_accessor :total, :last_transaction
attr_reader :discount, :items

ITEMS = []

  def initialize(discount = 0)
    @discount = discount
    @total = 0
    @items = []
  end

  def add_item(title, price, quantity = 1)
    if quantity > 0
    @total += price * quantity
    @last_transaction = @total
    quantity.times do
      @items << title
    end
    @last_transaction
    end

    #binding.pry
  end

  def apply_discount
    if @discount > 0
      @total =  @total - @total * (@discount / 100.00)
     "After the discount, the total comes to $#{@total.to_i}."
   else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
