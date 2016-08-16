cities = [ "boca raton", "bronx", "miami", "bloomington" ]
cities_capitalize = cities.map do |city|
	if city.include? " "
		city.split(" ").each do |c|
			c.capitalize!
	end.join(" ")
	else
		city.capitalize
	end
end

p cities_capitalize