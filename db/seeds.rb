# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IceCream.destroy_all

choc = IceCream.create(flavor: "chocolate", price: 1.99 )
vanilla = IceCream.create(flavor: "vanilla", price: 1.99)
strawb = IceCream.create(flavor: "strawberry", price: 2.50 )
banan = IceCream.create(flavor: "banana", price: 1.50 )
rum = IceCream.create(flavor:"rum and raisin", price: 3.00)
cookie = IceCream.create(flavor: "cookie dough", price: 2.29)