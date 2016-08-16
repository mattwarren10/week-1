class Car 
	def initialize(color)
		@color = color
		@cities_array = []
	end

	def make_noise
		puts "Vrroooomm!"
	end

	def travel_to(city)
		@cities_array.push(city)
	end

	def cities_visited
		@cities_array
	end
end

class Honda < Car
	def initialize(color)
		super(color)
		@cities_array = []
	end

	def make_noise
		puts "Broom!"
	end

	def travel_to(city)
		@cities_array.push(city)
	end

	def cities_visited
		@cities_array
	end

	# CLASS METHOD
	def self.honda_tagline
		puts "The power of dreams."
	end

end

class Toyota < Car
	def initialize(color)
		super(color)
		@cities_array = []
	end

	def make_noise
		puts "BROOOOOOOOM!"
	end

	def travel_to(city)
		@cities_array.push(city)
	end

	def cities_visited
		@cities_array
	end

	def self.toyota_tagline
		puts "Let's go places."
	end
end

# HONDA ACCORD
accord = Honda.new("Red")
accord.make_noise
accord.travel_to("Chicago")
accord.travel_to("Indianapolis")
puts "Matt's Honda Accord has traveled to #{accord.cities_visited[0]} and #{accord.cities_visited[1]}."


puts "-" * 50 #SEPARATOR


# TOYOTA CAMRY
camry = Toyota.new("Green")
camry.make_noise
camry.travel_to("New York")
camry.travel_to("Boston")
puts "Sara's Toyota Camry has traveled to #{camry.cities_visited[0]} and #{camry.cities_visited[1]}."

puts ""
puts "Class methods: "
puts "#{Honda.honda_tagline}"
puts "#{Toyota.toyota_tagline}"