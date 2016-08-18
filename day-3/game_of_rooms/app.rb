require_relative("lib/rooms.rb")
require_relative("lib/game.rb")

main = Room.new("You are facing north in a room with 4 doors. Pick a door. [ n, s, w, e ] type [ exit ] to quit.", { :exit => "You have quit." })
north = Room.new("Now you're in the green room. There are tomato plants growing. What do you want to do to the tomatoes? [ stomp, pick, throw ]", { :stomp => "'Arrrggh,' you say. Now the ground is all slimy.", :pick => "You take a bite. Eww, it's gross.", :throw => "Smash!! The tomato has been destroyed." })
east = Room.new("As you walk in, the light from the windows blinds your eyes. There's a sledgehammer nearby. What do you want to do to the windows? [ shut, shatter ]", { :shut => "You shut all the windows.", :shatter => "All the windows are shattered. Now you feel a nice breeze." })
south = Room.new("You found the janitor's closet. Just a bunch of mops and brooms. Type [ steal ] to take the mop.", { :steal => "You have a mop. Now go clean the floors!"})
west = Room.new("You entered the sky room. You are standing on a cloud. You see a blue sky all around you. Their bouncy like trampolines. [ jump ]", { :jump => "Very bouncy!" })

rooms = [ north, east, south, west ]

input = ""
new_game = Game.new(rooms, main)
puts new_game.location.description
puts "Where do you want to go?"
puts rooms[0].exit
while (input != "exit")
	print "> "
	input = gets.chomp
	if input.size == 1
		new_game.change_room(input)
	end
	input = gets.chomp
	new_game.act_on_an_object(input)
end


