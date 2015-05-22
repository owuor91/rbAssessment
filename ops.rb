require_relative 'exception.rb'
class Price

	include NoMethod

	def initialize(value)
		@value = value
	end

	def method_missing(input)
		self.checkMethod(input.to_s)
	end

	def tax
		@value * 0.16
	end



end


