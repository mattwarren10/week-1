class Room
	attr_reader :description, :exit
	def initialize(description)
		@description = description
		@exit = "Exits: [ back ]"
	end
end




