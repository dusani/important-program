class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end

class HourlyEmployee < Employee
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      @hours_worked * @hourly_rate
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
      @yearly_salary / 52
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email,yearly_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
      if @hours_worked > 40 then
      	(((@hours_worked - 40) * (@hourly_rate))+ (@yearly_salary)) / 52
      else
      	@yearly_salary / 52
      end
      
    end
end

class Payroll
    def initialize(employees)
        @employees = employees
    end
    
     def notify_employee(x)
          #email them
          puts "Notified #{x.name} via #{x.email} of amount deposited"
  	end

	 def pay_employees
       @employees.each do |x|
        result = x.calculate_salary * 0.82
        pretty_result = result.round(2)

        puts "Paid #{x.name} $#{pretty_result} this week"
      end
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
	 end
end

josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
frank = HourlyEmployee.new('Frank','freakyfrank@ironhack.com', 15, 70)
dan = HourlyEmployee.new('Dan','dancingdan@ironhack.com',15,70)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)


josh.calculate_salary
ted.calculate_salary
nizar.calculate_salary

employees = [josh, frank, dan, nizar, ted]

payroll = Payroll.new(employees)

puts ""

payroll.notify_employee(josh)

puts ""

payroll.pay_employees
