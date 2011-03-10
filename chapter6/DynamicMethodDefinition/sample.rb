class Test
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
