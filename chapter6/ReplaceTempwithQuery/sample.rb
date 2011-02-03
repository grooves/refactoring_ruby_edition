class Sample
  def initialize(quantity, item_price)
    @quantity = quantity
    @item_price = item_price
  end
  def price
   #add test data
   if base_price > 1000
     discount_factor = 0.95
   else
     discount_factor = 0.98
   end
   base_price * discount_factor
  end

  def base_price
   @quantity * @item_price
  end
end
