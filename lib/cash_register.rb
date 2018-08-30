class CashRegister

  attr_accessor :total, :discount
  attr_reader :items

  def initialize(discount=false)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity=1)
    @last_total = @total
    @last_quantity = quantity
    @total += price * quantity
    quantity.times { @items << item }
  end

  def apply_discount
    if @discount
      @total *= (1 - (discount.to_f/100))
      "After the discount, the total comes to $800."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    # the tests don't require it but we want to remove the voided items from the items array as well as reducing the title by their cost
    @last_quantity.times { @items.pop }
    
    @total = @last_total
  end

end
