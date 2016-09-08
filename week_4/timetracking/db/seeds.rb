# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ih = Project.create!(name: "Ironhack", description: "Ironhack is a ...")
tta = Project.create!(name: "Time Tracking App")
re = Project.create!(name: "Recipes", description: "Track my favorite recipes")

ih.time_entries.create(hours: 1, minutes: 10)
ih.time_entries.create(hours: 2, minutes: 10)
ih.time_entries.create(hours: 3, minutes: 10)
ih.time_entries.create(hours: 4, minutes: 10)
ih.time_entries.create(hours: 5, minutes: 10)
ih.time_entries.create(hours: 5, minutes: 40)

tta.time_entries.create(hours: 1, minutes: 50)
tta.time_entries.create(hours: 3, minutes: 30)
tta.time_entries.create(hours: 6, minutes: 30)
tta.time_entries.create(hours: 5, minutes: 20)
tta.time_entries.create(hours: 7, minutes: 20)
