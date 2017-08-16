# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'delete spaces'
Space.destroy_all
puts 'delete users'
User.destroy_all

puts 'Creating users'
user_1 = User.create!({
  first_name: "Jonathan",
  last_name: "Cohen",
  email: "jonathan.cohen@kaizenconseil.fr",
  password: "123456"
  })
puts 'users created'

puts 'Creating spaces...'
url = "http://www.cowork-in.fr/wp-content/uploads/2015/05/coworking1.jpg"
space_1 = Space.create!({
  name: "We Work",
  address: "33 Rue la Fayette, 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_2 = Space.create!({
  name: "NextDoor",
  address: "16-18, rue de Londres 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_3 = Space.create!({
  name: "Remix Coworking",
  address: "24 rue des petites ecuries, 75010 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_4 = Space.create!({
  name: "Lawomatic Coworking",
  address: "20 Rue Jean et Marie Moinon, 75010 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_5 = Space.create!({
  name: "Le Tank",
  address: "22bis Rue des Taillandiers, 75011 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_6 = Space.create!({
  name: "Le Laptop",
  address: "36 Rue Arthur Rozier, 75019 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_7 = Space.create!({
  name: "La Mutinerie",
  address: "29 Rue de Meaux, 75019 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_8 = Space.create!({
  name: "Work In Paris",
  address: "20 Rue Jean-Baptiste Pigalle, 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_9 = Space.create!({
  name: "Hubsy café & coworking",
  address: "41 Rue Réaumur, 75003 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  user: user_1
})

puts'spaces created'

puts 'add photos'
space_1.remote_photo_url = url
space_1.save
space_2.remote_photo_url = url
space_2.save
space_3.remote_photo_url = url
space_3.save
space_4.remote_photo_url = url
space_4.save
space_5.remote_photo_url = url
space_5.save
space_6.remote_photo_url = url
space_6.save
space_7.remote_photo_url = url
space_7.save
space_8.remote_photo_url = url
space_8.save
space_9.remote_photo_url = url
space_9.save

puts 'Finished!'

