class Price
  attr_reader :order,
              :primary_base,
              :secondary_base,
              :tertiary_base

  def initialize(order)
    @order = order
    @primary_base = 0
    @secondary_base = 0
    @tertiary_base = 0
  end
end
