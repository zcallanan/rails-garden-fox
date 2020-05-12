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
  User.create(
    email: Faker::Internet.email,
    address: Faker::Address.street_address,
    country_code: "Germany",
    phone_number: Faker::Business.credit_card_number,
    birth_date: "2020-05-12",
    password: "Password"
    )
end


