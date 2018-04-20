# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all

10.times do |index|
  Event.create!(date: Faker::Time,
                venue_id: Faker::Number,
                ticket_url: Faker::Internet.url,
                image: Faker::Internet.url,
                )
end
