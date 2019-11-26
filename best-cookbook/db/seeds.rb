# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Recipe.destroy_all
User.destroy_all

user1 = User.create(name: "Matt")
user2 = User.create(name: "Rob")
user3 = User.create(name: "jkfl;jwaio")

recipe1 = Recipe.create(name: "ice", content: "freeze water at below 0 Celsius", user: user1)
recipe2 = Recipe.create(name: "birthday cake", content: "go to store and buy cake", user: user1)
recipe3 = Recipe.create(name: "hairy cake", content: "put hair in cake", user: user2)
