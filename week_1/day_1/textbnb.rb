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
  Home.new("Xavier's place", "Kendall", 2, 42),
  Home.new("Frank's place", "Miami", 5, 47),
  Home.new("Meneti's place", "Pittsburgh", 3, 41),
  Home.new("Matt's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "Kendall", 4, 43),
  Home.new("Lillian's place", "Los Angeles", 7, 50),
  Home.new("Dan's place", "Bronx", 1, 48),
  Home.new("Wilfred's place", "Charleston", 5, 46),
  Home.new("Alain's place", "Miami", 6, 49),
  Home.new("Steve's place", "Boise", 3, 44)
]

def array_printer(array)
  array.each do |home|
    puts "#{home.name} in #{home.city} \nPrice: $#{home.price} a night"
  end
end

array_printer(homes)

puts "--------------------------------"


sorted_price1 = homes.sort do|hm1, hm2| 
  hm2.price <=> hm1.price
end

sorted_price2 = homes.sort do|hm1, hm2| 
  hm1.price <=> hm2.price

end
puts "Do you want to sort Home prices from highest to lowest?"
user_input = gets.chomp.downcase

if 
  user_input == "yes"
    array_printer(sorted_price1)
  else
    array_printer(sorted_price2)
  end



