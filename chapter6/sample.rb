class Sample
  def print_owing(previous_amount)
    #動くためのソース（とりあえず）
    @name = "Tanaka tarou"
    order1 = Order.new 100
    order2 = Order.new 200
    @orders = []
    @orders << order1
    @orders << order2

    outstanding = previous_amount * 1.2

    print_banner

    outstanding = calculate_outstanding(outstanding)

    print_detail outstanding

  end

  def print_banner
    # バナーを出力(print banner)
    puts "*********************"
    puts "****Customer Owes****"
    puts "*********************"
  end

  def print_detail(outstanding)
    #詳細を表示(print details)
    puts "name: #{@name}"
    puts "amount: #{outstanding}"
  end

  def calculate_outstanding(initial_value)
    @orders.inject(initial_value) {|result, order| result + order.amount}
  end

end
