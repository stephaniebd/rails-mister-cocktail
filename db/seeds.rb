# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# --- to remove dada when I'm creating new seed and run db:seed
Cocktail.destroy_all
Ingredient.destroy_all

# --- ingredients objets stored in variables to use when creating doses
light_rum = Ingredient.create(name: 'light rum')
dark_rum = Ingredient.create(name: 'dark rum')
Ingredient.create(name: 'Jack Daniels')
gin = Ingredient.create(name: 'gin')
Ingredient.create(name: 'Amaretto')
Ingredient.create(name: 'tequila')
vodka = Ingredient.create(name: 'vodka')
lime_wedge = Ingredient.create(name: 'lime wedge')
ice = Ingredient.create(name: 'ice')
Ingredient.create(name: 'mint leaves')
syrup = Ingredient.create(name: 'syrup')
campari = Ingredient.create(name: 'campari')
lime_juice = Ingredient.create(name: 'lime juice')
Ingredient.create(name: 'orange bitters')
ginger_beer = Ingredient.create(name: 'ginger beer')
tonic_water = Ingredient.create(name: 'tonic water')
dry_vermouth = Ingredient.create(name: 'dry vermouth')
sweet_vermouth = Ingredient.create(name: 'sweet vermouth')

# --- cocktails objets stored in variables to use when creating doses
martini = Cocktail.create(name: 'Sex on the beach')
dark_and_stormy = Cocktail.create(name: 'Dark & Stormy')
daiquiri = Cocktail.create(name: 'Margarita')
negroni = Cocktail.create(name: 'Negroni')
gin_tonic = Cocktail.create(name: 'Gin & Tonic')

# --- dose
Dose.create(description: '1 oz of', cocktail: negroni, ingredient: campari)
Dose.create(description: '1 oz of', cocktail: negroni, ingredient: sweet_vermouth)
Dose.create(description: '1 oz of', cocktail: negroni, ingredient: gin)

Dose.create(description: 'Amount to preference of', cocktail: gin_tonic, ingredient: gin)
Dose.create(description: 'Amount to preference of', cocktail: gin_tonic, ingredient: tonic_water)
Dose.create(description: 'Pour over some', cocktail: gin_tonic, ingredient: ice)
Dose.create(description: 'Garnish with', cocktail: gin_tonic, ingredient: lime_wedge)

Dose.create(description: '2 oz of', cocktail: martini, ingredient: vodka)
Dose.create(description: '1 oz of', cocktail: martini, ingredient: dry_vermouth)

Dose.create(description: '1 part of of', cocktail: dark_and_stormy, ingredient: dark_rum)
Dose.create(description: '2 parts of of', cocktail: dark_and_stormy, ingredient: ginger_beer)

Dose.create(description: '2 oz of', cocktail: daiquiri, ingredient: light_rum)
Dose.create(description: '1 oz of', cocktail: daiquiri, ingredient: lime_juice)
Dose.create(description: '3/4 oz of', cocktail: daiquiri, ingredient: syrup)
