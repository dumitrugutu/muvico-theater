# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Movie.create!([{ title: "Star Wars", description: "Something about Star Wars", start_time: Faker::Time.forward(4, :morning) }, { title: "Lord of the Rings", description: "Something about Lord of the Rings", start_time: Faker::Time.forward(5, :morning)  }, {title: "True Grit", description: "Something about True Grit", start_time: Faker::Time.forward(6, :morning) }])
