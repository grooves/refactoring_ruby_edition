class Sample
  def initialize(quantity, item_price)
    @quantity, @item_price = quantity, item_price
  end

  def price
    base_price = @quantity * @item_price
    quantity_discount = [0, @quanity - 500].max * @item_price * 0.05
    shipping = [base_price * 0.1, 100.0].min
    return base_price - quantity_discount + shipping
  end
end
