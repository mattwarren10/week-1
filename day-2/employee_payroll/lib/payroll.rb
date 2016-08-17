class Payroll
  def initialize(employees)
  	@employees = employees
  end

  def pay_employees(employees)
   # employees.each do |e|
   # 	puts "#{e.name}'s salary is #{e.calculate_salary}"
   # end
  end

  def notify(employee)
  	p employee.email
  	p "To: #{employee.name}"
  	p "You don't have to eat ramen this week."
  	p employee.calculate_salary
  	p "-" * 50
  end

end