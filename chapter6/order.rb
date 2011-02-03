class Order
  attr_reader :amount
  attr_writer :amount
  def initialize(amount)
    self.amount = amount
  end
end
