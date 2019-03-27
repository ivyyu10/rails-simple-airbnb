# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.delete_all

pictures = ['pic1.jpg', 'pic2.jpg', 'pic3.jpg']

10.times do
  Flat.create!(picture: (pictures).sample, name: Faker::Movies::StarWars.planet , address: Faker::Address.street_address, description: Faker::Lorem.paragraph, price_per_night: Faker::Number.within(100..500), number_of_guests:(1..5).to_a.sample)
end
puts "Created #{Flat.count} flats!"
