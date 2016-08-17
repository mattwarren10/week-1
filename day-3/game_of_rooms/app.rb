puts "You are facing north in a room with 4 doors. Pick a door. [ N, S, W, E ] type [ exit ] to quit."
input = ""
while input != "EXIT"
	print "> " 
	input = gets.chomp.upcase
	case input
	when "W"
		puts "You entered the sky room. You are standing on a cloud. You see a blue sky all around you. Don't fall."
		puts "Exits: [ back ]"
		# print "> "
	when "N"
		puts "Now you're in the green room. There are tomato plants growing. What do you want to do to the tomatoes? [ stomp, pick, throw ]"
		puts "Exits: [ back ]"
		print "> "
		choice = gets.chomp
			if choice == "stomp"
				puts "'Arrrggh,' you say. Now the ground is all slimy."
				puts "Exits: [ back ]"
			elsif choice == "pick"
				puts "You take a bite. Eww, it's gross."
				puts "Exits: [ back ]"
			elsif choice == "throw"
				puts "Smash!! The tomato has been destroyed."
				puts "Exits: [ back ]"
			elsif choice == "back" 
				puts "You are facing north in a room with 4 doors. Pick a door. [ N, S, W, E] type [ exit ] to quit."
			end
	when "E"
		puts "As you walk in, the light from the windows blinds your eyes. There's a sledgehammer nearby. What do you want to do to the windows? [ shut, shatter ]"
		puts "Exits: [ back ]"
		print "> "
		choice = gets.chomp
			if choice == "shut"
				puts "You shut all the windows."
				puts "Exits: [ back ]"
			elsif choice == "shatter"
				puts "All the windows are shattered. Now you feel a nice breeze."
				puts "Exits: [ back ]"
			elsif choice == "back"
				puts "You are facing north in a room with 4 doors. Pick a door. [ N, S, W, E] type [ exit ] to quit."
			end
	when "S"
		puts "You found the janitor's closet. Just a bunch of mops and brooms."				
		puts "Exits: [ back ]"
		print "> "
	when "BACK"
		puts "You are facing north in a room with 4 doors. Pick a door. [ N, S, W, E ] type [ exit ] to quit."
		print "> "
	when "EXIT"
		break
	else
		puts "That's not a valid choice! Try again."
	end
end