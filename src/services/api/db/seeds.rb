# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: 'demo', email: 'demo@touchettedevelopment.ca', password: 'password', password_confirmation: 'password')
recipe = Recipe.create(name: 'Cheese Omelette', description: 'Beautiful cheese omlette', user: user)
item = RecipeItem.create!(recipe_id: recipe.id, ingredient: cheese, amount: 26, measure: 'g')
item2 = RecipeItem.create!(recipe_id: recipe.id, ingredient: eggs, amount: 3, measure: 'unit')

cheese = Ingredient.create!(name: 'Cheese', recipe_item: item)
eggs = Ingredient.create!(name: 'Eggs', recipe_item: item2)

item.ingredient = cheese
item.save!

item2.ingredient = eggs
item2.save!



