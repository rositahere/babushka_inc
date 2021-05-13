# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  User.create(
    name: Faker::FunnyName.two_word_name,
    email: Faker::Internet.email,
    password: "123456"
  )
end

5.times do
  Granny.create(
    description: Faker::GreekPhilosophers.quote,
    user_id: rand(1..10)
  )
end

3.times do
  Appointment.create(
    date: Faker::Date.in_date_period,
    time: "10:30",
    location: Faker::Address.full_address,
    user_id: rand(1..10),
    granny_id: rand(1..5)
  )
end
