# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Cocktail.destroy_all
Ingredient.destroy_all

lemon = Ingredient.create(name: "lemon")
ice = Ingredient.create(name: "ice")
mint_leaves = Ingredient.create(name: "mint leaves")

# Cocktail.create(
#   name: 'Mojito',
#   ingredients: mint_leaves)


bloody_mary = Cocktail.create(name: 'Bloody Mary')
sex_on_the_beach = Cocktail.create(name: 'Sex on the beach')

Dose.create(description: '2 cubes', cocktail: bloody_mary, ingredient: ice)
