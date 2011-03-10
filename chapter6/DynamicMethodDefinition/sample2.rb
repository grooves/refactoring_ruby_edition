class Test
	def initialize(post_data)
		@post_data = post_data
	end

	def params
		@post_data[:params]
	end

	def session
		@post_data[:session]
	end
end

post_data = {:params => 'Paramas', :session => 'Session'}
test = Test.new(post_data)
p test.params
p test.session
