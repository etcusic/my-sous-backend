# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Thing.delete_all
Thing.create(words: "Hello, Github Pages!")
Thing.create(words: "I'm Heroku")
Thing.create(words: "Do you want to work together?")