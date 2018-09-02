class CashRegister
  
  attr_accessor :total, :discount, :quantity, :items 
  
  
def initialize (discount = 0)
  @total = 0
  @discount = discount
  @items = []
  end
  
def total
 return @total
end

def add_item (title, price, quantity=1)
  @transactions = []
  @transactions << [title, (price * quantity)]
  @total += (price * quantity)
  
  quantity.times do
  @items << title
end
end

def apply_discount 
  self.total = (total * ((100.0 - discount.to_f)/100)).to_i
 if @discount == 0
   "There is no discount to apply."
   else
     "After the discount, the total comes to $#{total.to_i}."
end
end

def items
  return @items
end

def void_last_transaction
  @total -= @transactions.last[1]
  
  @items.pop
  
  return @items
end
end
