class CashRegister

  attr_accessor :total, :items, :discount, :prices

  def initialize(discount=0)
    total = 0 
    @total = total 
    @items = []
    @discount = discount
    @prices = []
  end
  
  def add_item(title, price, quantity = 1)
    self.prices << price*quantity
    @total += price*quantity 
    quantity.times {@items << title }
  end 

  def apply_discount
    if self.discount == 0 
    return "There is no discount to apply."
  end
    @total -= @total/100*@discount
    "After the discount, the total comes to $#{@total}." 
  end 

  def void_last_transaction
    self.items.pop 
    self.total -= self.prices[-1]
  end 
end 