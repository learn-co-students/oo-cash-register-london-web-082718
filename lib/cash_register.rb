class CashRegister
  attr_accessor :total, :items, :discount, :last_transaction

  def initialize(discount = 0)
    @total = 0.00
    @items = []
    @discount = discount
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    quantity.times do
      items << item
    end
    @last_transaction = price * quantity
  end

  def apply_discount
    case
      when @discount > 0
        @total = @total - ((@total/100) * @discount)
        p "After the discount, the total comes to $#{@total.to_i}."
      else
        p "There is no discount to apply."
      end
  end

 def void_last_transaction
   @total = @total - @last_transaction
 end
end
