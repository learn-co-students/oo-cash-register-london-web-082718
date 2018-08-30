class CashRegister
  
  attr_accessor :items, :discount, :total, :last_transaction
  
  def initialize(discount=0)
    @total = 0.0
    @discount = discount
    @items = [ ]
  end
  
  def add_item(title, price, quantity=1)
    quantity.times do 
    items << title
    end
    @total += price * quantity
    @last_transaction = price * quantity
  end

  def apply_discount
    if @discount > 1 
      @discount = ((@discount * @total)/100.00)
      @total -= @discount
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end
  end
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end
