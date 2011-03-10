class Test
	attr_accessor :state

	[:failure, :error, :success].each do |method|
		define_method method do
			self.state = method
		end
	end

end

test = Test.new
p test.failure
