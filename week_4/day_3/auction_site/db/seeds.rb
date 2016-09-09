# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: "Jon Snow", email: "jon@snow.com")
user2 = User.create(name: "Anya Stark", email: "anya@stark.com")
user3 = User.create(name: "Sharon Williams", email: "sharon@williams.com")
user4 = User.create(name: "Tony Luke", email: "tony@luke.com")

[user1, user2, user3, user4].each do |user|
	5.times do |i|
		user.products << Product.new(title: "Product #{i}", description: "Description", deadline: )