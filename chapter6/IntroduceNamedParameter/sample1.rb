class SearchCriteria

	def initialize(hash)
		@author_id = hash[:author_id]
		@publisher_id = hash[:publisher_id]
		@isbn = hash[:isbn]
	end

	def puts_params
		p "author_id => #{@author_id}"
		p "publisher_id => #{@publisher_id}"
		p "isbn => #{@isbn}"
	end
end


hash = {:author_id => 1, :publisher_id => 2, :isbn => 'test'}
s = SearchCriteria.new(hash)
s.puts_params
