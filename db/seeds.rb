# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Movie.create!([{ title: "Star Wars", description: "Something about Star Wars", start_time: Faker::Time.forward(4, :morning), price: 9.95 }, { title: "Lord of the Rings", description: "Something about Lord of the Rings", start_time: Faker::Time.forward(5, :morning), price: 10.00  }, {title: "True Grit", description: "Something about True Grit", start_time: Faker::Time.forward(6, :morning), price: 8.50 }])

50.times do
  Purchase.create!(name: Faker::Name.name, email: Faker::Internet.email, movie_id: rand(1..3))
end
