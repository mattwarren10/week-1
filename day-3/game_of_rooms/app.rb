require_relative 'game.rb'
while (input != "exit")
	puts @location.description
	puts "Where do you want to go?"
	print "> "
	input = gets.chomp
end