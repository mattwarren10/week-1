require_relative("employee.rb")
require_relative("payable.rb")

class Designer < Employee
	include Payable
	def design_things

	end

	def select_typography
	end

	def select_colors
	end
end