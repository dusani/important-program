require_relative("../modules/caffeine_consumer")
require_relative("../modules/receive_salary")



class Programmer

	include CaffeineConsumer
	include ReceiveSalary

	def program
		drink
		salary
		do_things_with_computers
	end

	def  do_things_with_computers

		puts "I do magical things with computers"

	end
end