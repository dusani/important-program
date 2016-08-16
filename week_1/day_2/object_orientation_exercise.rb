# /---------------------------------------------------------
#  ------------------------- SETUP -------------------------
#  ---------------------------------------------------------/

class Car

	def initialize(name, sound)
		@name = name
		@sound = sound

		@cities_array = []
	end		
	

	def my_car
		puts "The #{@name} makes the #{@sound} sound!"
	end

	def travel_to(city_name)
		@cities_array.push(city_name)
	end

	def cities_visited
		@cities_array
	end

end


# /---------------------------------------------------------
#  -------------------- APPLICATION CODE -------------------
#  ---------------------------------------------------------/

the_car1 = Car.new("Porshe", "Brooooooom")

the_car1.my_car
the_car1.travel_to("Boston")
the_car1.travel_to("Bronx")
the_car1.travel_to("Queens")
the_car1.travel_to("Long Island")
the_car1.travel_to("Brooklyn")

p the_car1.cities_visited

puts ""

the_car2 = Car.new("Corvette", "BROOOOOOOM")

the_car2.my_car
the_car2.travel_to("La Mesa")
the_car2.travel_to("San Diego")
the_car2.travel_to("Pheonix")

p the_car2.cities_visited