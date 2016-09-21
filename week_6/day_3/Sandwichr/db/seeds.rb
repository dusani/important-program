# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first

roast_beef = Sandwich.create!(name:"Roast Beefy",bread_type:"Italian")
hot_pastrami = Sandwich.create!(name:"Hot Pastrami",bread_type:"Rye")
meatball = Sandwich.create!(name:"Meatball",bread_type:"Parmesan Oregano")


lettuce = Ingredient.create!(name: "lettuce", calories: 2)
artichokes = Ingredient.create!(name: "artichokes", calories: 50)
mayonnaise = Ingredient.create!(name: "mayonnaise", calories: 20)
spicy_mustard = Ingredient.create!(name: "spicy mustard", calories: 15)



meatball.ingredients.push(lettuce)
meatball.ingredients.push(artichokes)

hot_pastrami.ingredients.push(spicy_mustard)
hot_pastrami.ingredients.push(artichokes)
