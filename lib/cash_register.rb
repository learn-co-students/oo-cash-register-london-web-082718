require 'pry'

class CashRegister

  attr_accessor :total, :discount, :items, :last_transaction

  def initialize(discount = false)
    @total = 0
    @discount = discount
    @items = []
  end

  def total
    @total
  end


  def add_item(title, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << title
        counter += 1
      end
    else
      @items << title
    end
    @last_transaction = price
  end

  def apply_discount
    if discount
      discount = @discount * 10
      @total = @total - discount
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_transaction
  end

end
