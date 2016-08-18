require_relative("rooms.rb")
require_relative("game.rb")

main = Room.new("You are facing north in a room with 4 doors. Pick a door. [ N, S, W, E ] type [ exit ] to quit.")
north = Room.new("Now you're in the green room. There are tomato plants growing. What do you want to do to the tomatoes? [ stomp, pick, throw ]")
east = Room.new("As you walk in, the light from the windows blinds your eyes. There's a sledgehammer nearby. What do you want to do to the windows? [ shut, shatter ]")
south = Room.new("You found the janitor's closet. Just a bunch of mops and brooms.")
west = Room.new("You entered the sky room. You are standing on a cloud. You see a blue sky all around you. Don't fall.")

rooms = [ main, north, east, south, west ]

input = ""
while (input != "exit")
	binding.pry
	new_game = Game.new(rooms)
	puts @location
	puts "Where do you want to go?"
	print "> "
	input = gets.chomp
end