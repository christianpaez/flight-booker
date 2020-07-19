# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flight.delete_all
Airport.delete_all

5.times do
    airport_from = Airport.create(
        code: Faker::Address.city
    )
    airport_to = Airport.create(
        code: Faker::Address.city
    )
    5.times do
       Flight.create(
           duration: Faker::Number.between(from: 1, to: 10) * 10,
           departure_date: Faker::Date.between(from: Date.today, to: '2021-09-25'),
           from: airport_from,
           to: airport_to
        ) 
    end
end