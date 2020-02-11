# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.where(name: 'Hamburguesas').first_or_create
Category.where(name: 'Embutidos').first_or_create
Category.where(name: 'Bebidas').first_or_create
Category.where(name: 'Aliños').first_or_create
Category.where(name: 'Congelados').first_or_create
Category.where(name: 'Salsas').first_or_create
Category.where(name: 'Proteinas').first_or_create