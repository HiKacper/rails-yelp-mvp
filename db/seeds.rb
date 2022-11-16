# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

20.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address:Faker::Address.street_address,
    phone_number:Faker::PhoneNumber.phone_number,
    category: "chinese"
  )
end

20.times do
  Review.create(
    content:Faker::Restaurant.review,
    rating:Faker::Number.between(from: 0, to: 5),
    restaurant: Restaurant.all.sample
  )
end
