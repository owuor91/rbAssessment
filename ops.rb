require_relative 'exception.rb'
class Price

	include NoMethod

	def initialize(value)
		@value = value
	end

	def square
		@value *@value		
	end



end


