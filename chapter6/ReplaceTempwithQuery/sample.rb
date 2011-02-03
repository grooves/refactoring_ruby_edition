class sample
  def price
   base_price = @quantity * @item_price
   if base_price > 1000
     discount_factor = 0.95
   else
     discount_factor = 0.98
   end
   base_price * discount_factor
  end
end
