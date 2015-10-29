class Rover
	attr_accessor	:x, :y, :direction, :name

	def initialize(x, y, direction, name)
		@x = x
		@y = y
		@direction = direction
		@name = name
	end

	def location
		puts "The Rover #{name} is located at [#{x}, #{y}] facing #{direction}."
	end


	def read_instruction(input)
		if input == "L" || input == "R"
			turn(input)
		elsif input == "M"
			move
		else
			puts "This is an invalid action."
		end
	end

	def move(input)
		if input == "N"
			puts "[#{@x}, #{@y + 1}]"
		elsif input == "S"
			puts "[#x, #{@y - 1}]"
		elsif input == "W"
			puts "[#{@x - 1}, #{y}]"
		elsif input == "E"
			puts "[#{@x + 1}, #{y}]"
		else
				puts "This action is invalid. Please enter a direction."
		end
	end

# 	def turn(input)
# 		if input == "L"
# 			@y - 1
# 		elsif input == "R"
# 			@position + 1
# 		else
# 			puts "Your rover cannot turn."
# 		end
# end
end



