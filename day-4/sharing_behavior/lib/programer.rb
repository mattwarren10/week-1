require_relative ("employee.rb")
require_relative("payable.rb")

class Programmer < Employee
	include Payable
	def program
		do_wonderful_things_with computers
	end
end