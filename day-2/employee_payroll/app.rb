require_relative("lib/employee.rb")
require_relative("lib/hourly_employee.rb")
require_relative("lib/_salary_employee.rb")
require_relative("lib/multi_payment_employee.rb")
require_relative("lib/payroll.rb")

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)


nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 100000)


ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)


chris = HourlyEmployee.new('Chris', 'justcd@mail.broward.edu', 15, 50)


matt = HourlyEmployee.new('Matt', 'mwarren@harding.edu', 15, 45)


employees = [josh, nizar, ted, chris, matt]
payroll = Payroll.new(employees)
payroll.pay_employees(employees)
puts ""
payroll.notify(josh)
payroll.notify(nizar)
payroll.notify(ted)
payroll.notify(chris)
payroll.notify(matt)

