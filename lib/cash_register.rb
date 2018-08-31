require 'pry'


class CashRegister

attr_accessor :total, :discount, :price, :items


  def initialize(discount=0)
    @total = 0
    # sets total = 0 and don't need to initialize in def initialize(..)
    @discount = discount
    @items = []   # initialize an empty array to store all items
  end

  def add_item(item, price, quantity = 1)
    @item = item
    @price = price

    @total += price * quantity

    if quantity > 1    # whole bit needed if item quant > 1
      counter = 0
      while counter < quantity
        counter += 1
        @items << item
        @items
      end
    else
    @items << item     # works if item has quantity of 1
    @items
    end

    # WHY IS IT NOT RETURNING????
  end


  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{@total}."
    else     # TEST - if no discount is present
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end


end

# HELP - https://github.com/alexisadorn/Flatiron-OO-Ruby/blob/master/oo-cash-register-v-000/lib/cash_register.rb
