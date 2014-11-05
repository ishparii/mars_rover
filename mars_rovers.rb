require 'json'

class Plateau
	def initialize(x, y)
		$right_limit = x
		$upper_limit = y
	end
end

class Rover
	attr_accessor :x, :y, :facing 
	def initialize(x, y, facing)
		@x = x
		@y = y
		@facing = facing
	end

	def right
		case @facing
			when "N" then @facing = "E"
			when "S" then @facing = "W"
			when "E" then @facing = "S"
			when "W" then @facing = "N"			
		end
	end

	def left
		case @facing
			when "N" then @facing = "W"
			when "S" then @facing = "E"
			when "E" then @facing = "N"
			when "W" then @facing = "S"
		end
	end

	def move
		case @facing
			when "N"
				@y += 1 if @y < $upper_limit
			when "S"
				@y -=1 if @y > 0
			when "E"
				@x += 1 if @x < $right_limit
			when "W"
				@x -= 1 if @x > 0
		end
	end
end


input = '{
	"plateau": [5, 5],
	"rovers": [
		{
			"location": [1, 2, "N"],
			"instruction": ["L", "M", "L", "M", "L", "M", "L", "M", "M"]
		},
		{
			"location": [3, 3, "E"],
			"instruction": ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]
		}
	]
}'

input_parsed = JSON.parse(input)

puts input_parsed

plateau = Plateau.new(5, 5)
rover = Rover.new(1, 2, "N")

command = "LMLMLMLMM"
# commands = input_parsed[rovers[0[instructions]]].split("")

# puts commands[0]
rover.left
rover.move
rover.move


puts rover.x 
puts rover.y 
puts rover.facing


