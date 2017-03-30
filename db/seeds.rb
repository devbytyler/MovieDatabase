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
movie_images = [
                "https://s-media-cache-ak0.pinimg.com/564x/4c/6c/7e/4c6c7e0d845558fbffee287a734d1968.jpg",
                "https://s-media-cache-ak0.pinimg.com/564x/e0/5c/7b/e05c7bb165b020be4041f58bdc0198ae.jpg",
                "https://s-media-cache-ak0.pinimg.com/originals/b5/b3/f4/b5b3f42dd95230bd4a262b8bd9c1c02b.jpg",
                "https://s-media-cache-ak0.pinimg.com/originals/ca/f0/d5/caf0d5f9364795282ed8d3fb05eed3b1.jpg",
                "https://s-media-cache-ak0.pinimg.com/736x/e1/8b/05/e18b050cde2dddaa02f66b9a73cc9c89.jpg",
                "https://s-media-cache-ak0.pinimg.com/originals/e8/b5/02/e8b502e5eb4c0e4da901aa554904c463.jpg",
                'http://www.chilloutpoint.com/images/2010/05/20-most-hilarious-movie-poster-remakes/20-most-hilarious-movie-poster-remakes-08.jpg',
                "http://i.dailymail.co.uk/i/pix/2013/06/11/article-2339722-1A439A40000005DC-726_634x888.jpg",
                "https://mir-s3-cdn-cf.behance.net/project_modules/disp/c6792421090203.560439f5b1233.png"
]

actor_arr = []
actor_names.each do |name|
  actor_arr << Actor.create!(name: "#{name}")
end
puts "Actors Created"

10.times do |movie|
  Movie.create!(title: Faker::Ancient.titan, genre: "#{genres.sample}", rating: "#{ratings.sample}", image_url: "#{movie_images.sample}")
end
10.times do |movie|
  Movie.create!(title: Faker::Superhero.name, genre: "#{genres.sample}", rating: "#{ratings.sample}", image_url: "#{movie_images.sample}")
end

puts "15 Movies Created"

Movie.all.each do |movie|
  rand(1..6).times do
    movie.roles.create!(actor: actor_arr.sample)
  end
end

puts "Roles Created"