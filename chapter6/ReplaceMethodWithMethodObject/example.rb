class Order
  require 'example_price'

  def price
    Price.new(self)
  end
end
