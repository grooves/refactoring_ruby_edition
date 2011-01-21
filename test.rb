require 'customer'
require 'rental'
require 'movie'

baba = Customer.new 'baba'
mov1 = Movie.new 'movie1', Movie::REGULAR
mov2 = Movie.new 'movie2', Movie::NEW_RELEASE
mov3 = Movie.new 'movie3', Movie::CHILDRENS
rental1 = Rental.new mov1, 7
rental2 = Rental.new mov2, 3
rental3 = Rental.new mov3, 10

baba.add_rental rental1
baba.add_rental rental2
baba.add_rental rental3

puts baba.statement

puts '####################################'

puts baba.html_statement
