module NoMethod
	def checkMethod(input)
		method = input
		present = Price.method_defined? method

		method.to_s

		if present == false
			puts "Method #{method} is undefined"
			puts "Please define what #{method} should do. delimit lines with a semicolon"
			
			userCode = gets
					
			Price.send(:define_method, "#{method}")do
			eval(userCode)
		end
			

		end
	end
end