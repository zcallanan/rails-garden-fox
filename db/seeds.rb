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

require "open-uri"

Garden.destroy_all
User.destroy_all

user = User.create(
  email: "gmail@gmail.com",
  password: "password",
  address: "Bogenstreet",
  country_code: "de",
  phone_number: "983749326",
  birth_date: 20.years.ago
)
user.save
garden = Garden.new(
  name: "Alter Botanischer Garden",
  description: "Old Botanical garden is located in Maxvorstadt, Munich, Bavaria, Germany.",
  address: "Sophienstraße 7, 80333 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees",
  size: 1000,
  capacity: 100,
  garden_type: "Garden",
  availability: true,
  user:user,
  )
image = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Alter_Botanischer_Garten_Munich.jpg/2560px-Alter_Botanischer_Garten_Munich.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')
garden.save

garden = Garden.new(
  name: "Hofgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 1, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  garden_type: "Garden",
  availability: true,
  user:user,
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Rosengarten Untergiesing",
  description: "This serene, grassy park is known for its colorful rose gardens that bloom in June & July.",
  address: "Sachsenstraße 2, 81543 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees River",
  size: 3000,
  capacity: 150,
  garden_type: "Garden",
  availability: true,
  user:user,
  )
# image = "https://www.kimapa.de/wp-content/uploads/2014/09/Rosengarten_11-1-620x413.jpg"
# file = URI.open(image)
# garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

# garden.save
