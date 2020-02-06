
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all


25.times do
  City.create!(city_name: Faker::Address.city)
end

25.times do
  Dog.create!(name: Faker::Name.first_name, city: City.all.sample)
end

25.times do
  Dogsitter.create!(name: Faker::Name.first_name, city: City.all.sample)
end

25.times do
  Stroll.create!(date: Faker::Date.forward(days: 100), dogsitter: Dogsitter.all.sample, dog: Dog.all.sample, city: City.all.sample)
end

puts "Yeeaaaah Maaaaaaaan on a une bdd!"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
