def power(base, exponent)
	current_number = base
	2.upto(exponent) do |num|
		current_number *= base
	end
	puts current_number
end

def reverse(str)
	reverse_str = str.reverse
	puts reverse_str
end

def factorial(num)
	multiplier = 1
	1.upto(num) do |num|
		multiplier *= num
	end
	puts multiplier

end



power(10, 3)
reverse("Race car")
factorial(5)