class SearchCriteria

	def initialize(params)
		@author_id = params[:author_id]
		@publisher_id = params[:publisher_id]
		@isbn = params[:isbn]
	end

	def puts_params
		p "author_id => #{@author_id}"
		p "publisher_id => #{@publisher_id}"
		p "isbn => #{@isbn}"
	end
end


s = SearchCriteria.new(:author_id => 1, :publisher_id => 2, :isbn => 'test')
s.puts_params
