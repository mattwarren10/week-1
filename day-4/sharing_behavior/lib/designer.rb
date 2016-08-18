# lib/designer.rb
require_relative("employee.rb")
require_relative("payable.rb")

class Designer < Employee
	include Payable
	def design_things
		puts "I like designing things."
	end

	def select_typography
		puts "Lets select typography."
	end

	def select_colors
		puts "I think I want to select some colors."
	end
end