# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all

require 'open-uri'
require 'json'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
text = open(url).read
ingredients = JSON.parse(text)

ingredients['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

# Cocktail.create(name: 'Mint Julep')
# Cocktail.create(name: 'Whiskey Sour')
# Cocktail.create(name: 'Mojito')
# Cocktail.create(name: 'Margarita')
# Cocktail.create(name: 'Manhattan')
# Cocktail.create(name: 'Bloody Mary')
# Cocktail.create(name: 'Daiquiri')
# Cocktail.create(name: 'Martini')
# Cocktail.create(name: 'Old Fashioned')
# Cocktail.create(name: 'Screwdriver')
# Cocktail.create(name: 'Gimlet')
# Cocktail.create(name: 'Gin Tonic')
