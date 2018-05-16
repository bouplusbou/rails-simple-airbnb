# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating 100 fake flats...'
100.times do
  flat = Flat.new(
    name:    Faker::TwinPeaks.location,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::Hipster.paragraph,
    price_per_night: Faker::Commerce.price,
    number_of_guests: [1, 2, 3, 4, 5, 6, 7].sample,
  )
  flat.save!
end
puts 'Finished!'

