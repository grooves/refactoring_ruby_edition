def failure
	self.state = :failure
end

def error 
	self.state = :error
end

↓

def_each :failure, :error do |method_name|
	self.state = method_name
end
