# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
User.destroy_all
Ingredient.destroy_all

user1 = User.create(name: "Matt")
user2 = User.create(name: "Rob")
user3 = User.create(name: "jkfl;jwaio")

ingredient1 = Ingredient.create(name: "hair")
ingredient2 = Ingredient.create(name: "markers")
ingredient3 = Ingredient.create(name: "peanuts")
ingredient4 = Ingredient.create(name: "soy")
ingredient5 = Ingredient.create(name: "meat")
ingredient6 = Ingredient.create(name: "water")
ingredient7 = Ingredient.create(name: "frosting")

recipe1 = Recipe.create(name: "ice", content: "freeze water at below 0 Celsius", user: user1)
recipe2 = Recipe.create(name: "birthday cake", content: "go to store and buy cake", user: user1)
recipe3 = Recipe.create(name: "hairy cake", content: "put hair in cake", user: user2)

recipe1.ingredients << [ingredient6, ingredient7]
recipe2.ingredients << [ingredient5, ingredient7, ingredient4, ingredient3]
recipe3.ingredients << [ingredient1, ingredient2, ingredient7, ingredient6]

user1.ingredients << [ingredient3, ingredient1]
user2.ingredients << [ingredient3, ingredient7]
user3.ingredients << [ingredient3, ingredient1]