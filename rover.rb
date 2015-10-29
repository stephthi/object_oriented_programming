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


	def read(input)
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

		def turn(input)
		if input == "L"
			if @direction == "W"
				@direction = "S"
			elsif @direction == "S"
				@direction = "E"
			elsif @direction == "E"
				@direction = "N"
			else @direction == "N"
				@direction = "W"
			end
		elsif input == "R"
				if @direction == "W"
					@direction = "N"
				elsif @direction == "N"
					@direction = "E"
				elsif @direction == "E"
					@direction = "S"
				else @direction == "S"
					@direction = "W"
				end
		else
			puts "Your rover cannot turn."
		end
end
end

class Plateau
	def initialize(x_width, y_height)
		@x_width = x_width
		@y_height = y_height
	end

	def size_info
		puts "This plateau is #{@x_width} by #{@y_height}."
	end
end




