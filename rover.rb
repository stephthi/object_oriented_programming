class Rover

	def initialize(x, y, direction, name)
		@x = x
		@y = y
		@direction = direction
		@name = name
	end

	def read_instruction(input)
		if input == "L"
			move(input)
		elsif
		 	 input == "M"
		else
			puts "This is an invalid action."
		end
	end

end