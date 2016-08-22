class StringCalculator
	def add(string = 0)
	
		numbers = string.split(",").map(&:to_i)
		sum = 0
		numbers.map {|number| sum += number}
		sum
	end
end


# the_calculator = StringCalculator.new

# p the_calculator.add("5,7")