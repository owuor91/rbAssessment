class Price
	def initialize(value)
		@value = value
	end

	def square
		@value *@value		
	end

	def tax
		@value * 0.16 
	end
end


  num= Price.new(100)
p num.square

p num.tax