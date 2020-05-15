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
  price: 550,
  house_rules: "Public garden, will require barriers to make it private",
  filter_categories: "Fountain Flowers Trees",
  size: 1000,
  capacity: 100,
  garden_type: "Garden",
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
  name: "Luxury garden",
  description: "The is good for a perfect time with family and friends in the center of Grünwald, Germany.",
  address: "Portenlängerstraße 3, 82031 Grünwald",
  price: 600,
  house_rules: "Private garden, partys not welcome",
  filter_categories: "Green Pool Fountain Flowers Trees Lawn Temple",
  size: 300,
  capacity: 500,
  start_time: 9,
  duration: 8,
  featured: true,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589479623/Bildschirmfoto_2020-05-14_um_20.03.46_yfrfzd.png"
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
  name: "Rooftop gold",
  description: "Wonderful Rooftop in the center of Munich, Germany, located between Marienplatz and Sendlingertor.",
  address: "Maximilianstraße 4, 80538 München",
  price: 500,
  house_rules: "Public garden, will require barriers to make it private.",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 300,
  capacity: 100,
  start_time: 9,
  duration: 8,
  featured: true,
  garden_type: "Rooftop",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589479632/Bildschirmfoto_2020-05-14_um_19.58.14_whwaat.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "BBQ garden",
  description: "Perfect for family and friends with good food.",
  address: "Schönfeldstraße 6, 80539 München",
  price: 180,
  house_rules: "Private garden, loud music is not allowed.",
  filter_categories: "Green with a big BBQ setup",
  size: 100,
  capacity: 50,
  start_time: 10,
  duration: 7,
  featured: true,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589475260/Bildschirmfoto_2020-05-14_um_18.48.09_s8vuql.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Rooftop Berlin",
  description: "The best view in over Berlin in private atmosfaere.",
  address: "Alte Jakobstraße 8, 10969 Berlin",
  price: 230,
  house_rules: "Do wath you wan't, but with love.",
  filter_categories: "Couchset",
  size: 100,
  capacity: 100,
  start_time: 8,
  duration: 6,
  garden_type: "Rooftop",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589479622/Bildschirmfoto_2020-05-14_um_19.59.24_q2vshu.png"
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
  name: "Rooftop farm",
  description: "Fresh food from the roof.",
  address: "Hofgraben 10, 80539 München",
  price: 280,
  house_rules: "Private garden for urban farmers only.",
  filter_categories: "Farm",
  size: 500,
  capacity: 100,
  start_time: 9,
  duration: 10,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589475287/Bildschirmfoto_2020-05-14_um_18.23.26_m0wamz.png"
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
  name: "Garden dream",
  description: "The beauty in green is a peradise in green",
  address: "Ledererstraße 15, 80331 München",
  price: 250,
  house_rules: "Private garden only for good people",
  filter_categories: "Fountain Flowers Trees Lawn Temple",
  size: 1500,
  start_time: 9,
  duration: 8,
  capacity: 80,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589479673/Bildschirmfoto_2020-05-14_um_18.48.43_rc3fwd.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "24-05-2020",
  end_date: "31-05-2020",
  user_id: user.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save

garden = Garden.new(
  name: "Green garden",
  description: "English green for the perfect Tea time.",
  address: "Altenhofstraße 25, 80331 München",
  price: 160,
  house_rules: "Private garden for Tea lovers only",
  filter_categories: "English green and Tea",
  size: 320,
  capacity: 150,
  start_time: 8,
  duration: 6,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589475249/Bildschirmfoto_2020-05-14_um_18.44.29_cpdkk4.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "23-05-2020",
  end_date: "29-05-2020",
  user_id: user.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save

garden = Garden.new(
  name: "Wild garden",
  description: "The perfect place to have fun",
  address: "Am Einlaß 12, 80469 München",
  price: 135,
  house_rules: "Public garden for a good time",
  filter_categories: "Party",
  size: 400,
  start_time: 7,
  duration: 8,
  capacity: 250,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589475254/Bildschirmfoto_2020-05-14_um_18.49.23_ttumvf.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

booking = Booking.new(
  start_date: "26-05-2020",
  end_date: "10-06-2020",
  user_id: user.id,
  garden_id: garden.id,
  booking_price: garden.price
)

booking.save

garden = Garden.new(
  name: "Cocktail garden",
  description: "Good place to have a drink",
  address: "Oberanger 18, 80331 München",
  price: 255,
  house_rules: "Puplic garden for a perfect day",
  filter_categories: "Party",
  size: 200,
  start_time: 11,
  duration: 8,
  capacity: 100,
  garden_type: "Garden",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589454211/cocktail-drink-1189266_hmgij7.jpg"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

garden = Garden.new(
  name: "Klunkerkranich",
  description: "In the heart of Kreuzberg",
  address: "Karl-Marx-Straße 66, 12043 Berlin",
  price: 205,
  house_rules: "Puplic Rooftop",
  filter_categories: "Pool",
  size: 400,
  start_time: 9,
  duration: 10,
  capacity: 300,
  garden_type: "Rooftop",
  availability: true,
  user_id: user.id
  )
image = "https://res.cloudinary.com/daf8fgekl/image/upload/v1589479688/Bildschirmfoto_2020-05-14_um_19.52.23_nqfg1e.png"
file = URI.open(image)
garden.photo.attach(io: file, filename: garden.name, content_type: 'image/jpg')

garden.save

puts("Finished!")
