puts "You are facing north in a room with 3 doors. On on the west wall, one on the north wall, and one on the east wall. Pick a door. [ W, N, E ] type [ exit ] to quit."
input = ""
while input != "exit"
	puts ">"
	input = gets.chomp
	case input
	when "W"
		puts "You entered the sky room. You are standing on a cloud. You see a blue sky all around you."
	
	when "N"
		puts "Now you're in the green room. There are tomato plants growing. What do you want to do to the tomatoes? [ stomp, pick, throw ]"
		choice = gets.chomp
			if choice == "stomp"
				puts "'Arrrggh,' you say. Now the ground is all slimy."
			elsif choice == "pick"
				puts "You take a bite. Eww, it's gross."
			elsif choice == "throw"
			end
	when "E"
		puts ""
	when "back"
		puts "You are facing north in a room with 3 doors. On on the west wall, one on the north wall, and one on the east wall. Pick a door. [ W, N, E ] type [ exit ] to quit."
	end
end