class Sample
  def print_owing
    #動くためのソース（とりあえず）
    @name = "Tanaka tarou"
    order1 = Order.new 100
    order2 = Order.new 200
    @orders = []
    @orders << order1
    @orders << order2

    outstanding = 0.0

    print_banner

    #勘定を計算(calculate outstanding)
    @orders.each do |order|
      outstanding += order.amount
    end

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
end
