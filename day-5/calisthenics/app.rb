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

def time_conversion(num)
	hours = 0
	min = 0
	hours = (num / 60.0).floor
	min = (((num / 60.0) - hours) * 60).round
	if min != 0
		puts "#{hours}:#{min}"
	else
		puts "#{hours}:00"
	end
end

def count_vowels(str)
	vowels = 0
	vowels = str.scan(/[aeoui]/).count
	puts vowels
end

def uniques
	
end



power(4, 3)
power(10, 3)

reverse("Race car")
reverse("Hannah")

factorial(5)
factorial(8)

time_conversion(500)
time_conversion(700)
time_conversion(900)


count_vowels("hello")