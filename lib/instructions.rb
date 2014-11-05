def follow_instruction(instruction, rover)
	case instruction
	when "L" then rover.left
	when "R" then rover.right
	when "M" then rover.move
	end
end