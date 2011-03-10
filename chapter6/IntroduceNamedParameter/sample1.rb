module CustomInitializers
	def hash_initializer(*attribute_names)
   define_method(:initialize) do |*args|
		 data = args.first || {}
		 attribute_names.each do |attribute_name| 
			 instance_variable_set "@#{attribute_name}", data[attribute_name]
		 end
	 end
	end
end

Class.send :include, CustomInitializers

class SearchCriteria
hash_initializer :author_id, :publisher_id, :isbn

	def puts_params
		p "author_id => #{@author_id}"
		p "publisher_id => #{@publisher_id}"
		p "isbn => #{@isbn}"
	end
end


hash = {:author_id => 1, :publisher_id => 2, :isbn => 'test'}
s = SearchCriteria.new(hash)
s.puts_params
