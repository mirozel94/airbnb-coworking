# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Space.destoy_all

puts 'Creating users'
user1 = User.create!( {
  name: Jonathan,
  email: jonathan.cohen@kaizenconseil.fr
  })
puts 'users created'

puts 'Creating spaces...'
Space.create!({
  name: "We Work",
  address: "33 Rue la Fayette, 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "NextDoor",
  address: "16-18, rue de Londres 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Remix Coworking",
  address: "24 rue des petites ecuries, 75010 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Lawomatic Coworking",
  address: "20 Rue Jean et Marie Moinon, 75010 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Le Tank",
  address: "22bis Rue des Taillandiers, 75011 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Le Laptop",
  address: "36 Rue Arthur Rozier, 75019 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "La Mutinerie",
  address: "29 Rue de Meaux, 75019 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Work In Paris",
  address: "20 Rue Jean-Baptiste Pigalle, 75009 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

Space.create!({
  name: "Hubsy café & coworking",
  address: "41 Rue Réaumur, 75003 Paris",
  description: "The best space.",
  capacity: 200,
  price: 450,
  photo: "http://res.cloudinary.com/kaizen-conseil/image/upload/v1502875571/nbtpnhc6uewlnuaiodzl.jpg",
  user: user_1
})

puts'spaces created'

puts 'Finished!'

