# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
  puts "starting pet creation"
  pet = Pet.create!(
    name: Faker::FunnyName.two_word_name,
    age: rand(1..15),
    species: Pet::SPECIES.sample,
    found_on: rand(Date.today - 10...Date.today),
    address: Faker::Address.street_address
  )
  puts "finished creating pet #{pet.id}"
end
