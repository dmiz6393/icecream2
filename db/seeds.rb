# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

IceCream.destroy_all

IceCream.create([
{flavor: "Chocolate", price: 1.99}, 
{flavor: "Vanilla", price: 1.99},
{flavor: "Cookie Dough", price: 2.30},
{flavor: "Cookies & Cream", price: 2.00},
{flavor: "Birthday Cake", price: 2.50},
{flavor: "Caramel", price: 2.00},
{flavor: "Coffee", price: 1.99},
{flavor: "Pistachio", price: 2.50},
{flavor: "Vegan Coconut", price: 3.99},
{flavor: "Strawberry", price: 1.00},
{flavor: "Rum and Raison", price: 1.99},
{flavor: "Mint Chocolate Chip", price: 2.00},
{flavor: "Rocky Road", price: 2.00},
{flavor: "Butter Pecan", price: 2.50},
{flavor: "Rainbow", price: 1.99},
{flavor: "Cherry", price: 1.50}
])