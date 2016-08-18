require 'pry'
require_relative 'rooms.rb'
class Game
	attr_accessor :rooms, :location
	def initialize(array)
		@rooms = array
		@location = @rooms[0]
	end

	def change_room(input)	
		case input
			when "n"
				@location = @rooms[1]
			when "e"
				@location = @rooms[2]
			when "s"
				@location = @rooms[3]
			when "w"
				@location = @rooms[4]
			when "back"
				@location = @rooms[0]
			else
				puts "That's an invalid option. Try again."
		end
	end
end



	



