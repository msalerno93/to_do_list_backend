# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


grocery = Category.create(name: "Grocery")
automotive = Category.create(name: "Automotive")
cleaning = Category.create(name: "Cleaning")
office = Category.create(name: "Office")

List.create(title: "What to Clean?", description: "List of what needs to be cleaned in the apartment")