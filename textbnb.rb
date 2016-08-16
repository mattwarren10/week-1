require 'pry'

class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49),
  Home.new("Edwards's place", "Honolulu", 2, 48),
  Home.new("Matt's place", "Bloomington", 7, 53),
  Home.new("Louis's place", "Springfield", 5, 38),
  Home.new("Dawn's place", "Kabul", 4, 60),
  Home.new("Sara's place", "Nashville", 3, 59)
]

# homes.each do |h|
#   puts "#{h.name} in #{h.city}"
#   puts "Price: $#{h.price} a night"
#   puts "-" * 50
# end

prices = homes.map do |hm|
  hm.price
end

total_capacities = 0.0

homes.each do |hm|
  total_capacities += hm.capacity
end

puts "The average capacity is:"
puts total_capacities / homes.length

result = homes.reduce(0.0) do |sum, hm|
  sum + hm.price
end

puts "The average price is:"
puts result / 10



def print_homes(array)
  array.each do |h|
    puts "#{h.name} in #{h.city} w/ maximum #{h.capacity}"
    puts "Price: $#{h.price} a night"
    puts "-" * 50
  end
end

puts "Type highest, lowest, capacity, city, or enter a price: "
input = gets.chomp
if input == "highest"
  highest_to_lowest = homes.sort do |a, b|
    b.price <=> a.price
  end
  print_homes(highest_to_lowest)
elsif input == "lowest"
  lowest_to_highest = homes.sort do |a, b|
    a.price <=> b.price
  end
  print_homes(lowest_to_highest)
elsif input == "capacity"
  capacity_of_homes = homes.sort do |a, b|
    a.capacity <=> b.capacity
  end
  print_homes(capacity_of_homes)
elsif input == "city"
  sort_by_city = homes.sort do |a, b|
    a.city <=> b.city
  end
  print_homes(sort_by_city)
elsif input.to_i.is_a? Integer
  homes.find do |n|  
    if n.price == input.to_i
      puts "#{n.name} in #{n.city}, with max occup. #{n.capacity}. $#{n.price}"
    end
  end
else
  puts "Type something relevant."
end



