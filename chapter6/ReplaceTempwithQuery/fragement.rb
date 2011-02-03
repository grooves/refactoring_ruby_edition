if(base_price > 1000)
  base_price * 0.95
else
  base_price * 0.98
end

def base_price
 @quantity * @item_price
end
