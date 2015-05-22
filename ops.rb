#Class Price uses checkMethod(input) contained in the NoMethod Module written in the exception.rb file

require_relative 'exception.rb'
class Price

	include NoMethod


#attribute accessor of the Price class
	def initialize(value)
		@value = value
	end

#overriding the ruby interpreter using method_missing to dynamically handle the absence of a mthod called by user on the Price object
	def method_missing(input)
		self.checkMethod(input.to_s)
	end

#calculate VAT on given price. an example of a present method 
	def tax
		@value * 0.16
	end


end


