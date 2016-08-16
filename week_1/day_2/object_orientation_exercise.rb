# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Car

	def initialize(name, sound)
		@name = name
		@sound = sound
	end		
	

	def my_car
		puts "The #{@name} makes the #{@sound} sound!"
	end
end


# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

the_car1 = Car.new("Kia", "Brooooooom")

the_car1.my_car

puts ""

the_car2 = Car.new("Honda", "BROOOOOOOM")

the_car2.my_car