require_relative "chef"
require_relative "restaurant"
require_relative "fastfood_restaurant"
require_relative "gastronomic_restaurant"

pushi = Restaurant.new("Pushi", "Cape Town", "Asian")

# X is located in y, and serves Z food
puts "#{pushi.name} is located at #{pushi.city} and serves #{pushi.category}"

puts "Changed it's owner and type of food.."
pushi.category = "South African"

puts "Now #{pushi.name} serves #{pushi.category}"

# # X is open/close"
status = pushi.open? ? "open" : "close"
puts "#{pushi.name} is #{status}"

puts "Tracy and Kiki are going to dinner"
pushi.book("tracy")
pushi.book("kiki")

puts "Here are the clients of the day:"
pushi.display_clients

# kfc is an instance of the FastfoodRestaurant class
kfc = FastfoodRestaurant.new("KFC", "Miami", "Chicken", 7)

# obar is an instance of the GastrononmicRestaurant class
obar = GastronomicRestaurant.new("Obar", "Sidney", "Meat", 3)

puts kfc
puts obar

pushi = GastronomicRestaurant.new("Pushi", "Cape Town", "Asian", 2, "kiki kennedy")

p pushi
p pushi.chef
# pushi.chef returns instance of class Chef
p pushi.chef.name

puts "#{pushi.chef.name} works at #{pushi.name}, cooking #{pushi.category} food"

# Creating a new instance of the Chef class
kiki = Chef.new("Kiki Kennedy", pushi)
p kiki.name

# kiki.restaurant returns instance of class Restaurant
p kiki.restaurant
p kiki.restaurant.name
p kiki.restaurant
