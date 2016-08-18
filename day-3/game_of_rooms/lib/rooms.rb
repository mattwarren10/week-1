class Room
	attr_reader :description, :exit, :objects
	def initialize(description, objects)
		@description = description
		@exit = "Exits: [ back ]"
		@objects = objects
	end


end




