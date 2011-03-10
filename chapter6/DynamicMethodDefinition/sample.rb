class Test
	attr_accessor :state

	def failure
		self.state = :failure
	end

	def error
		self.state = :error
	end

	def success
		self.state = :success
	end

end

test = Test.new
p test.failure
