# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

# user_photo = URI.open('https://res.cloudinary.com/djiwfu4hh/image/upload/v1621364553/vl445sszq3ermxdqes8wau9xrqvb.jpg')
# granny_photo = URI.open('https://res.cloudinary.com/djiwfu4hh/image/upload/v1621688821/fxzdkgopvywe4f0coi2qzg4vqqd1.png')

Appointment.destroy_all
Granny.destroy_all
User.destroy_all

10.times do | num |
  user = User.new(
    name: Faker::FunnyName.two_word_name,
    email: Faker::Internet.email,
    password: "123456"
  )
  user.photo.attach(io: URI.open('https://i.imgur.com/HHJynnn.jpg'), filename: 'avatar.png', content_type: 'image/jpg')
  user.save!
  if num < 6
    granny = Granny.new(
      description: Faker::GreekPhilosophers.quote,
      user_id: user.id
    )
    granny.photos.attach(io: URI.open('https://i.imgur.com/cDoFFww.png'), filename: 'granny.png', content_type: 'image/png')
    granny.save!
  end
end
