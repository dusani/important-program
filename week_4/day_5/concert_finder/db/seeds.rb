# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
concert1 = Concert.create!(name: "Shrek Forever", artist: "Shrek", venue: "American Airlines Arena", city: "Miami, FL", date: Date.today, price: 10, description: "Candy cake caramels macaroon gingerbread danish. Lollipop tiramisu marshmallow apple pie cake caramels muffin toffee. Oat cake icing caramels icing tiramisu chupa chups. Apple pie cupcake dragée dragée soufflé pie bonbon.")
concert2 = Concert.create!(name: "The Legends of Tarzan", artist: "Tarzan", venue: "The End", city: "Nashville, TN", date: Date.today, price: 10, description: "Lemon drops cotton candy gummies chocolate bar tart jelly jujubes. Sesame snaps cake ice cream chocolate carrot cake. Apple pie lemon drops bonbon muffin pie. Bonbon pie macaroon brownie liquorice sweet roll sweet roll halvah.")
concert3 = Concert.create!(name: "Disney on Ice", artist: "Disney Crew", venue: "Brooklyn Bowl", city: "Brooklyn, NY", date: Date.today + 1.week, price: 10, description: "Sweet icing pudding sweet roll sugar plum jelly-o. Cake dessert gingerbread croissant lemon drops chocolate cake cake sweet roll fruitcake. Chocolate cake lollipop cake pie.")
concert4 = Concert.create!(name: "Crota's End", artist: "The Guardians", venue: "9:30 club", city: "Washington, D.C", date: Date.today + 2.week, price: 10, description: "Pudding danish toffee candy gummies tootsie roll toffee biscuit. Pudding chocolate bar pie. Liquorice donut tart bonbon jelly-o jelly beans chocolate bar pie jelly.")
concert5 = Concert.create!(name: "Hero's Dootie", artist: "Wreak-It-Ralph", venue: "The Joint", city: "Las Vegas, NV", date: Date.today + 3.week, price: 10, description: "Pudding danish toffee candy gummies tootsie roll toffee biscuit. Pudding chocolate bar pie. Liquorice donut tart bonbon jelly-o jelly beans chocolate bar pie jelly.")