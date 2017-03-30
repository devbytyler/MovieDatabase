# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

genres = ['Action', 'Comedy', 'Family', 'Romance', 'War', 'Horror', 'Drama', 'Documentary',]
ratings = ['NR', 'G', 'PG', 'PG-13', 'R']
actor_names = ['Ashley Greene', "Daniel Kaluuya", "Alex Blake",  "Richie Campbell", "Nadine Marshall", "Lu Corfield", 
"Richie Campbell", "Claire Lams", "Nav Sidhu", "Kathryn O'Reilly", "Liam Neeson", "Hillary Duff", "Dwaye Johnson", "Will Smith"]

actor_arr = []
actor_names.each do |name|
  actor_arr << Actor.create!(name: "#{name}")
end
puts "Actors Created"

7.times do |movie|
  Movie.create!(title: Faker::Ancient.titan, genre: "#{genres.sample}", rating: "#{ratings.sample}", image_url: "https://s-media-cache-ak0.pinimg.com/564x/97/05/60/970560298ac5f360392c311a479f3c8f.jpg")
end
8.times do |movie|
  Movie.create!(title: Faker::Superhero.name, genre: "#{genres.sample}", rating: "#{ratings.sample}", image_url: "https://s-media-cache-ak0.pinimg.com/564x/97/05/60/970560298ac5f360392c311a479f3c8f.jpg")
end

puts "15 Movies Created"

Movie.all.each do |movie|
  rand(1..6).times do
    movie.roles.create!(actor: actor_arr.sample)
  end
end

puts "Roles Created"