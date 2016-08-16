# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/
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

     def calculate_hourly_salary
      #returns the hours worked * hourly_rate
      @hourly_rate * @hours_worked
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, salary_rate)
        @name = name
        @email = email
        @salary_rate = salary_rate
    end

    def calculate_salaried_salary
    	@salary_rate / 52
    end
end

class MultiPaymentEmployee < Employee
    def initialize(name, email, salary_rate, hourly_rate, hours_worked)
        @name = name
        @email = email
        @salary_rate = salary_rate
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

   def calculate_multi_salary
   		if @hours_worked > 40 then
      	(((@hours_worked - 40) * (@hourly_rate)) + (@salary_rate)) / 52
      else
      	@yearly_salary / 52
      end
   end
    
end

class Payroll
    def initialize(employees)
      @employees = employees
  end

  def notify_employee(employee)
          #email them
          puts "Hi #{name}, check your email: #{email} for details on your direct deposit amount"
  end

  def pay_employees
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 


  end
end

# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

# josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)

# p josh.calculate_hourly_salary

# puts ""

# nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)

# p nizar.calculate_salaried_salary

# puts ""

# ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)

# p ted.calculate_multi_salary

      employees = [josh, nizar, ted, frank, daniel]
	# payroll = Payroll.new(employees)
	# payroll.pay_employees
	employees(name)




