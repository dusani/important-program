class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
]

def array_printer(array)
  array.each do |home|
    puts "#{home.name} in #{home.city} \nPrice: $#{home.price} a night"
  end
end

array_printer(homes)

puts "--------------------------------"

cities = homes.map {|hm| hm.city}

p cities

puts "--------------------------------"
puts "Average: .each Method"

prices = homes.map {|pr| pr.price}

total = 0.0
prices.each {|x| total += x}
avg_prices = total / prices.size

p avg_prices

puts "--------------------------------"
puts "Average: .reduce Method"

prices = homes.map {|pr| pr.price}

average_prices = prices.reduce(:+) / prices.size.to_f

p average_prices

