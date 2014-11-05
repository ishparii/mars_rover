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
				@y += 1 if @y < UPPER_LIMIT
			when "S"
				@y -=1 if @y > 0
			when "E"
				@x += 1 if @x < RIGHT_LIMIT
			when "W"
				@x -= 1 if @x > 0
		end
	end
end