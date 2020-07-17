# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Astronaut.destroy_all

armstrong = Astronaut.create!(name: "Neil Armstrong", age: 37, job: "Commander")
behnken = Astronaut.create!(name: "Bob Behnken", age: 49, job: "Chief")
