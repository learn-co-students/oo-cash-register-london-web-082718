class CashRegister
  def initialize(total = 0, discount = 0)
    @total = total
    @discount = @total * discount / 100
  end
end
