class Hash
	def to_module
		hash = self
		Module.new do
			hash.each_pair do |key, value|
				define_method key do
					value
				end
			end
		end
	end
end


class Test
	def initialize(post_data)
		self.extend post_data.to_module
	end
end

post_data = {:params => 'Paramas', :session => 'Session'}
test = Test.new(post_data)
p test.params
p test.session
