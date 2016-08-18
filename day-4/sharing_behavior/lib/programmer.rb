# lib/programmer.rb
require_relative ("employee.rb")
require_relative("payable.rb")

class Programmer < Employee
	include Payable
	def program
		do_wonderful_things_with_computers
	end

	def do_wonderful_things_with_computers
		puts "I love doing wonderful things with computers!"
	end
end