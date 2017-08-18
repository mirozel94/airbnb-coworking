# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'deleting bookings'
Booking.destroy_all
puts 'deleting spaces'
Space.destroy_all
puts 'deleting users'
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
  description: "We Work est un réseau mondial d'espaces de travail où les entreprises grandissent ensemble.",
  capacity: 200,
  price: 500,
  user: user_1
})

space_2 = Space.create!({
  name: "NextDoor",
  address: "16-18, rue de Londres 75009 Paris",
  description: "Profitez d'une communauté bienveillante, qui crée du lien et du business.",
  capacity: 150,
  price: 400,
  user: user_1
})

space_3 = Space.create!({
  name: "Remix Coworking",
  address: "24 rue des petites ecuries, 75010 Paris",
  description: "Le Remix est une communauté ouverte et bienveillante composée de 50% d’entrepreneurs et 50% de créatifs.",
  capacity: 300,
  price: 150,
  user: user_1
})

space_4 = Space.create!({
  name: "Lawomatic Coworking",
  address: "20 Rue Jean et Marie Moinon, 75010 Paris",
  description: "Coworking à Paris 10ème, Entre Belleville et le Canal St Martin. Dans un cadre top le premier Coworking de Paris !",
  capacity: 120,
  price: 100,
  user: user_1
})

space_5 = Space.create!({
  name: "Le Tank",
  address: "22bis Rue des Taillandiers, 75011 Paris",
  description: "Le Tank est un espace de coworking qui favorise la création, nourrit l'inspiration et encourage l'ambition des esprits créatifs du numérique à Paris.",
  capacity: 340,
  price: 450,
  user: user_1
})

space_6 = Space.create!({
  name: "Le Laptop",
  address: "36 Rue Arthur Rozier, 75019 Paris",
  description: "Laptop est un espace de coworking pour venir travailler de manière flexible ou permanente dans un cadre calme et inspirant dans le 19e à Jourdain.",
  capacity: 200,
  price: 450,
  user: user_1
})

space_7 = Space.create!({
  name: "La Mutinerie",
  address: "29 Rue de Meaux, 75019 Paris",
  description: "Espace de coworking et de coliving rural, accueillant indépendants et groupes en quête de vert, au creux des vallées percheronnes.",
  capacity: 90,
  price: 80,
  user: user_1
})

space_8 = Space.create!({
  name: "Work In Paris",
  address: "20 Rue Jean-Baptiste Pigalle, 75009 Paris",
  description: "Work In Paris est un réseau d'espace de coworking dédiés aux indépendant et aux petites entreprises.",
  capacity: 230,
  price: 95,
  user: user_1
})

space_9 = Space.create!({
  name: "Hubsy café & coworking",
  address: "41 Rue Réaumur, 75003 Paris",
  description: "Hubsy Café & Coworking, votre bureau au café en plein coeur de Paris.",
  capacity: 110,
  price: 145,
  user: user_1
})

puts'spaces created'

puts 'add photos'
space_1.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503048994/Wework_ur4gvx.jpg"
space_1.save
space_2.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503048994/NextDoor_hpqpyd.jpg"
space_2.save
space_3.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503048994/Remix_zayhpc.jpg"
space_3.save
space_4.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503063172/lawomatic_rmhvrs.jpg"
space_4.save
space_5.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503062896/Le_Tank_txaauc.jpg"
space_5.save
space_6.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503062893/laptop_zpqag3.jpg"
space_6.save
space_7.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503062914/mutinerie_q5qoal.jpg"
space_7.save
space_8.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503062924/Workinparis_fhr4sv.jpg"
space_8.save
space_9.remote_photo_url = "http://res.cloudinary.com/kaizen-conseil/image/upload/v1503062907/hubsy_ehfzgb.jpg"
space_9.save

puts'booking creating'

# Booking.create(date: Date.today, user: User.last, space: Space.last)

puts 'Finished!'



