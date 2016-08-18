require 'pry'
require_relative 'rooms.rb'
class Game
	attr_accessor :rooms, :location
	def initialize(array, main_room)
		@rooms = array
		@main_room = main_room
		@location = main_room
	end

	def change_room(input)	
		case input
			when "n"
				puts @location = @rooms[0].description
			when "e"
				puts @location = @rooms[1].description
			when "s"
				puts @location = @rooms[2].description
			when "w"
				puts @location = @rooms[3].description
			when "back"
				puts @location = @main_room.description
			when "exit"
				puts "You have quit."
			else
				puts "That's an invalid option. Try again."
		end
	end

	def act_on_an_object(input)
		case input
			when "exit"
				puts "You have quit"
			when "stomp"
				puts @rooms[0].objects[:stomp]
			when "pick"
				puts @rooms[0].objects[:pick]
			when "throw"
				puts @rooms[0].objects[:throw]
			when "shut"
				puts @rooms[1].objects[:shut]
			when "shatter"
				puts @rooms[1].objects[:shatter]			
			when "steal"
				puts @rooms[2].objects[:steal]
			when "jump"
				puts @rooms[3].objects[:jump]
			when "back"
				puts @location = @main_room.description
				
		end
	end
end



	



