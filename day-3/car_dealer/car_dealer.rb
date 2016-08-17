class CarDealer
	attr_accessor :array
	def initialize(cars)
		@cars = cars
	end

	def print_cars
		puts @cars
	end
end

class Car
	def initialize(make, model)
		@make = make
		@model = model
	end
end


ford_fiesta = Car.new("Ford", "Fiesta")
ford_mustang = Car.new("Ford", "Mustang")
honda_civic = Car.new("Honda", "Civic")
honda_crv = Car.new("Honda", "CR-V")

vehicles_array = [ ford_fiesta, ford_mustang, honda_civic, honda_crv ]


car_dealer = CarDealer.new(vehicles_array)

car_dealer.print_cars