# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

yopmail_array = ["mabite@yopmail.com", "thptoulouse@yopmail.com", "monsieurX@yopmail.com", "Salutmabite@yopmail.com", "jaimemabite@yopmail.com"]

#5.times{
  #User.create!(first_name: Faker::FunnyName.name, #last_name: Faker::FunnyName.name, email: yopmail_array.#sample, description: #Faker::Movies::HitchhikersGuideToTheGalaxy.quote)
  #}

#5.times{
 # Event.create!(start_date: Faker::Date.forward(days: 30), user: User.all.sample, description: Faker::ChuckNorris.fact, location: Faker::Address.city, title: Faker::Movies::HarryPotter.character, price: rand(50..200), duration: 60)
  #}

#5.times{
 # Attendance.create!(user: User.all.sample, event: Event.all.sample)
#}
