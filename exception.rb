module NoMethod
	def checkMethod(input)

		#receive user input and check whether the Price object responds to the method that the user has called
		method = input
		present = Price.method_defined? method

		method.to_s  #convert method name to string so as to interpolate in the prompt below


		#if method called on price object does not exist, inform user and prompt them for code to run the non-existent method
		if present == false
			puts "Method #{method} is undefined"
			puts "Please define what #{method} should do. delimit lines with a semicolon"
			
			#receive user code and assign it to variable
			userCode = gets


			#dynamically define non-existent method and assign users code to it then patch it to the price object		
			Price.send(:define_method, "#{method}")do
			eval(userCode)
		end
			

		end
	end
end