# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.new(
#   email: Faker, created_at: "2020-05-11 12:38:32", updated_at: "2020-05-12 11:20:40", address: "1 Arnulfstraße", country_code: "DE", phone_number: "+49 12123131313", birth_date: "1980-01-01", admin: true

#   )


Garden.destroy_all

garden = Garden.new(
  name: "Awesome Garden",
  description: "A beautiful garden",
  address: "16 Villa Gaudelet, Paris",
  price: 500,
  house_rules: "No parties or pets. No fun!",
  filter_categories: "BBQ, Fireplace",
  size: 250,
  capacity: 25,
  garden_type: "Garden",
  availability: true,
  user_id: 2
  )
garden.save

garden = Garden.new(
  name: "An okay garden",
  description: "A modest garden",
  address: "Munich",
  price: 300,
  house_rules: "Keep noise down.",
  filter_categories: "TV, Fireplace, WiFi",
  size: 100,
  capacity: 10,
  garden_type: "Rooftop",
  availability: true,
  user_id: 1
  )
garden.save

garden = Garden.new(
  name: "Sort of a garden",
  description: "It's ok",
  address: "Munich",
  price: 500,
  house_rules: "Stay off the grass",
  filter_categories: "BBQ, Fireplace",
  size: 50,
  capacity: 8,
  garden_type: "Garden",
  availability: true,
  user_id: 2
  )
garden.save

garden = Garden.new(
  name: "An okay garden",
  description: "A modest garden",
  address: "Munich",
  price: 300,
  house_rules: "Keep noise down.",
  filter_categories: "TV, Fireplace, WiFi",
  size: 100,
  capacity: 10,
  garden_type: "Rooftop",
  availability: false,
  user_id: 1
  )
garden.save

garden = Garden.new(
  name: "Awesome Garden",
  description: "A beautiful garden",
  address: "Munich",
  price: 500,
  house_rules: "No parties or pets. No fun!",
  filter_categories: "BBQ, Fireplace",
  size: 250,
  capacity: 25,
  garden_type: "Garden",
  availability: true,
  user_id: 2
  )
garden.save

garden = Garden.new(
  name: "An okay garden",
  description: "A modest garden",
  address: "Munich",
  price: 300,
  house_rules: "Keep noise down.",
  filter_categories: "TV, Fireplace, WiFi",
  size: 100,
  capacity: 10,
  garden_type: "Rooftop",
  availability: true,
  user_id: 1
  )
garden.save

garden = Garden.new(
  name: "Sort of a garden",
  description: "It's ok",
  address: "Munich",
  price: 500,
  house_rules: "Stay off the grass",
  filter_categories: "BBQ, Fireplace",
  size: 50,
  capacity: 8,
  garden_type: "Garden",
  availability: true,
  user_id: 2
  )
garden.save
