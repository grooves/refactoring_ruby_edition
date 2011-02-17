class Sample
  attr_accessor :input_val, :quantity, :year_to_date

  def discount(input_val, quantity, year_to_date)
    result = input_val
    result -= 2 if input_val > 50
    result -= 1 if quantity > 100
    result -= 4 if year_to_date > 10000
    result
  end
end
