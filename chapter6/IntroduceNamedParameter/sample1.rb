class SearchCriteria
	attr_reader :author_id, :publisher_id, :isbn

	def initialize(author_id, publisher_id, isbn)
		@author_id = author_id
		@publisher_id = publisher_id
		@isbn = isbn
	end

	def puts_params
		p "author_id => #{@author_id}"
		p "publisher_id => #{@publisher_id}"
		p "isbn => #{@isbn}"
	end
end


s = SearchCriteria.new(1,2,'test')
s.puts_params
