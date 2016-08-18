require_relative("../modules/caffeine_consumer")
require_relative("../modules/receive_salary")



class Designer

	include CaffeineConsumer
	include ReceiveSalary

	def design_things
		drink
		salary
		select_typography
		select_colors
	end

	def select_typography

		puts "I selet typography"

	end

	def select_colors

		puts "I love colors"

	end
end