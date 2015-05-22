module NoMethod
	def checkMethod
		input = gets.chomp
		arr = input.split(".")
		method = arr[1].to_sym
		present = Price.method_defined? method
		if present == false
			puts "#{method} is undefined"
	end
end