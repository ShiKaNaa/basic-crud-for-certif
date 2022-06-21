# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Liste.destroy_all
Ingredient.destroy_all

puts "Makings seeds"

Liste.create!(nom: "Pizza")
Liste.create!(nom: "Tiramissu")

Ingredient.create!(nom: "eau", quantite: 308, liste: Liste.first, unite: "g")
Ingredient.create!(nom: "farine", quantite: 475, liste: Liste.first, unite: "g")
Ingredient.create!(nom: "sel", quantite: 10, liste: Liste.first, unite: "g")
Ingredient.create!(nom: "levure", quantite: 7, liste: Liste.first, unite: "g")

puts "Done !"
