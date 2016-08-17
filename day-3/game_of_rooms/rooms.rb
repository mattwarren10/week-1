require 'game.rb'
class Room
	def initialize(description, exit)
		@description = description
		@exit = exit
	end
end

north = Room.new("Now you're in the green room. There are tomato plants growing. What do you want to do to the tomatoes? [ stomp, pick, throw ]", "Exits: [ back ]")
south = Room.new("You found the janitor's closet. Just a bunch of mops and brooms.", "Exits: [ back ]")
east = Room.new("As you walk in, the light from the windows blinds your eyes. There's a sledgehammer nearby. What do you want to do to the windows? [ shut, shatter ]", "Exits: [ back ]")
west = Room.new("You entered the sky room. You are standing on a cloud. You see a blue sky all around you. Don't fall.", "Exits: [ back ]")