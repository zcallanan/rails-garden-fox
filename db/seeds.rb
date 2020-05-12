# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Garden.destroy_all

15.times do
  Garden.create(
    description: Faker::Lorem.sentence,
    location: Faker::Address.street_address,
    price: Faker::Number.within(range: 10..200),
    house_rules: Faker::Lorem.sentence,
    size: Faker::Number.within(range: 1..1000),
    capacity: Faker::Number.within(range: 2..200)
    )
end
