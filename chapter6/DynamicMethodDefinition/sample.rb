class Test
	attr_accessor :state

	def self.states(*args)
		args.each do |arg|
			define_method arg do
				self.state = arg
			end
		end
	end
	states :failure, :error, :success
end

test = Test.new
p test.failure
