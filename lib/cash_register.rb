
class CashRegister

  def initialize(discount=0)
    @discount = discount
    @total = 0
    @items = []
  end

  attr_accessor :discount, :total, :items

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @lasttransaction = price
  end

  def apply_discount
    @total = @total * (100 - @discount)/100
    if @discount > 0
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @lasttransaction
    @items.pop
  end

end
