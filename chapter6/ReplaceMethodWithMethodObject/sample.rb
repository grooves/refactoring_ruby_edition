require 'gamma'
class Account
  attr_accessor :delta

  def initialize(delta)
    @delta = delta
  end

  def gamma(input_val, quantity, year_to_date)
    Gamma.new(self, input_val, quantity, year_to_date).compute
  end

end
