class Rover
	attr_accessor	:x, :y, :direction, :name

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end

	def location
 		"[#{x}, #{y}] facing #{direction}."
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


	def move
		if @direction == "N"
			@y += 1
			puts "[#{@x}, #{@y}]"
		elsif @direction == "S"
			@y -= 1
			puts "[#{x}, #{@y}]"
		elsif @direction == "W"
			@x -= 1
			puts "[#{@x}, #{y}]"
		elsif @direction == "E"
			@x += 1
			puts "[#{@x}, #{y}]"
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

plateau1 = Plateau.new(5, 5)
plateau1.size_info

puts "1. What is the x coordinate, y coordinate and direction?"
answer1 = gets.chomp

# answer1.split("").each do |var|
# 	rover1.read(var)
# end

rover1 = Rover.new(answer1[0].to_i, answer1[2].to_i, answer1[4])

puts "What the sequence of turns and moves you would like to do?"
travel1 = gets.chomp

travel1.split("").each do |var|
	rover1.read(var)
end

puts "2. What is the x coordinate, y coordinate and direction?"
answer2 = gets.chomp

rover2 = Rover.new(answer2[0].to_i, answer2[2].to_i, answer2[4])

puts "What the sequence of turns and moves you would like to do?"
travel2 = gets.chomp

travel2.split("").each do |var|
	rover2.read(var)
end

puts rover1.location
puts rover2.location





