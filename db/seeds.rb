# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
auditoriums = Auditorium.create!([{name: "Chamber of Secrets", seat_capacity: 35}, {name: "Room 1", seat_capacity: 60}, {name: "Room 2", seat_capacity: 55}])

movies = Movie.create!([{ title: "Star Wars", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
", start_time: Faker::Time.forward(4, :morning), price: 9.95 }, { title: "Lord of the Rings", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
", start_time: Faker::Time.forward(5, :morning), price: 10.00  }, {title: "True Grit", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
", start_time: Faker::Time.forward(6, :morning), price: 8.50 }])

screenings = Screening.create!([{movie_id: 1, auditorium_id: 1, start_time: Faker::Time.forward(4, :morning)}, {movie_id: 2, auditorium_id: 1, start_time: Faker::Time.forward(5, :morning)}, {movie_id: 3, auditorium_id: 2, start_time: Faker::Time.forward(6, :morning)}])

50.times do
  Purchase.create!(name: Faker::Name.name, email: Faker::Internet.email, movie_id: rand(1..3))
end
