require_relative "./lib/rover"
require_relative "./lib/instructions"


input_arr = []

file='input.txt'
f = File.open(file, "r")
f.each_line { |line|
  input_arr << line
}
f.close

plateau_up_right = input_arr[0].split(" ")


	RIGHT_LIMIT = plateau_up_right[0].to_i
	UPPER_LIMIT = plateau_up_right[1].to_i

def deploy_rovers(input)

input.delete_at(0)
rovers = []
input.each_index do |index|

	if index % 2 == 0
		rover_input = input[index].split(" ")
		rover_x = rover_input[0].to_i
		rover_y = rover_input[1].to_i
		rover_face = rover_input[2]
		
		rovers[index] = Rover.new(rover_x, rover_y, rover_face)

	else 
		instructions = input[index].split("")
		
		instructions.each {|instruction| follow_instruction(instruction, rovers[index-1])}

		puts "#{rovers[index-1].x} #{rovers[index-1].y} #{rovers[index-1].facing}"
	end

end
end

deploy_rovers(input_arr)

puts "=========="