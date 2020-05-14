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
Booking.destroy_all

user = User.create(
  email: "a@gmail.com",
  password: "password",
  address: "Bogenstreet",
  country_code: "de",
  phone_number: "983749326",
  birth_date: 20.years.ago
)
user.save

user_two = User.create(
  email: "b@gmail.com",
  password: "password",
  address: "Bogenstreet",
  country_code: "de",
  phone_number: "983749326",
  birth_date: 20.years.ago
)
user_two.save

user_three = User.create(
  email: "c@gmail.com",
  password: "password",
  address: "Bogenstreet",
  country_code: "de",
  phone_number: "983749326",
  birth_date: 20.years.ago
)
user_three.save

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
  featured: true,
  start_time: 8,
  duration: 8,
  availability: true,
  user_id: user.id
  )
image = "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Alter_Botanischer_Garten_Munich.jpg/2560px-Alter_Botanischer_Garten_Munich.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')
garden.save

garden = Garden.new(
  name: "Hopfgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 2, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 9,
  duration: 6,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Hoffgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 3, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 9,
  duration: 8,
  featured: true,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "21-05-2020",
  end_date: "23-05-2020",
  user_id: user.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save

garden = Garden.new(
  name: "Holfgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 4, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 9,
  duration: 9,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Hotgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 5, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 10,
  duration: 7,
  featured: true,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Hoflgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 6, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 8,
  duration: 6,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "26-05-2020",
  end_date: "31-05-2020",
  user_id: user.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save

garden = Garden.new(
  name: "Hoftgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 7, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees River",
  size: 3000,
  capacity: 150,
  start_time: 9,
  duration: 10,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "16-05-2020",
  end_date: "19-05-2020",
  user_id: user_two.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save


garden = Garden.new(
  name: "Hofsgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 9, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  start_time: 9,
  duration: 10,
  capacity: 500,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Hofalgarten",
  description: "The Hofgarten is a garden in the center of Munich, Germany, located between the Residenz and the Englischer Garten.",
  address: "Hofgartenstraße 10, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 4000,
  capacity: 500,
  start_time: 9,
  duration: 6,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://www.bavaria.by/wp-content/uploads//2018/02/keyvisual-nr-1650-luftaufnahme-hofgarten-muenchen-foto_keyvisual-988-x-598px.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save
