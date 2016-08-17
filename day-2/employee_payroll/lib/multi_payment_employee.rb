class MultiPaymentEmployee < Employee
	def initialize(name, email, salary, salary_per_hour, hours)
		@name = name
        @email = email
        @salary = salary
        @salary_per_hour = salary_per_hour
        @hours = hours
    end

    def calculate_salary
    	( (@hours - 40) * @salary_per_hour + @salary ) * 0.82 / 52
    end
end