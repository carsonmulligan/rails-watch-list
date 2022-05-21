# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb

puts "Cleaning up database..."
Movie.destroy_all
puts "Database cleaned"

puts "Cleaning up database..."
List.destroy_all
puts "Database cleaned"

Movie.create(title: 'SFO-FRA // SO-BV-54067 // USRFID:67243',
             overview: '10 /pc @ 1152 KG // 10 @ 41 x 27 x 42" // ChaojiMicro --> JIM AG // MAWB: 001-000095642 // SFO-FRA // SO-BV-54067 // USRFID:67243', rating: 6.9)
Movie.create(title: 'SFO-FRA // SO-BV-66097 // USRFID:57243',
             overview: '10 /pc @ 1152 KG // 10 @ 41 x 27 x 42" // ChaojiMicro --> JIM AG // MAWB: 001-000095642 // SFO-FRA // SO-BV-66097 // USRFID:57243', poster_url: 'https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg', rating: 8.7)
Movie.create(title: 'SFO-FRA // SO-BV-78097 // USRFID:47243',
             overview: '10 /pc @ 1152 KG // 10 @ 41 x 27 x 42" // ChaojiMicro --> JIM AG // MAWB: 001-000095642 // SFO-FRA // SO-BV-78097 // USRFID:47243', poster_url: 'https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg', rating: 7.9)
Movie.create(title: "SFO-FRA // SO-BV-86097 // USRFID:37243",
             overview: '10 /pc @ 1152 KG // 10 @ 41 x 27 x 42" // ChaojiMicro --> JIM AG // MAWB: 001-000095642 // SO-BV-86097 // USRFID:37243', poster_url: 'https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg', rating: 7.0)
puts "#{Movie.count} shipments created"

# Movie = Individual Shipment
# List =
# 11.times do
#   Movie.create(title: Faker::FunnyName.name, overview: Faker::GreekPhilosophers.quote, poster_url: "#{www.}Faker::Games::ClashOfClans.troop)
# end
5.times do
  List.create(name: Faker::Nation.capital_city)
end

puts "#{List.count} lists created"
