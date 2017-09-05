# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
puts "Destroying articles"
Article.destroy_all

puts "Creating articles"
10.times do
  post = Article.new(
    title: Faker::Commerce.product_name,
    content: Faker::ChuckNorris.fact,
    # votes: (0..1000).to_a.sample
  )
  puts "Created #{post.title}"
  post.save
end
