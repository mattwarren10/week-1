class SalariedEmployee < Employee
	def initialize(name, email, salary)
		@name = name
        @email = email
        @salary = salary
    end

    def calculate_salary
    	@salary / 52 * 0.82
    end
end