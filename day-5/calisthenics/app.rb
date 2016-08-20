def power(base, exponent)
	current_number = base
	2.upto(exponent) do |num|
		current_number = current_number * base
	end
	puts current_number
end

power(4, 4)