class Test
	def initialize(post_data)
		(class << self; self; end).class_eval do
			post_data.each_pair do |key, value|
				define_method key.to_sym do
					value
				end
			end
		end
end
end

post_data = {:params => 'Paramas', :session => 'Session'}
test = Test.new(post_data)
p test.params
p test.session
