class Person

	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my name is #{@name}."
	end
end



class	Student < Person
	def learn
		puts "I get it!"
	end
end

class	Instructor < Person
	def teach
		puts "Everything in Ruby is an Object"
	end
end


chris = Instructor.new("Chris")
chris.greeting
christina = Student.new("Christina")
christina.greeting

# chris.learn
# christina.teach

chris.teach
christina.learn

#There is an error because the specific methods are only defined to certain classes.
#However, if you call Instructor to teach and Student to learn. It will work.