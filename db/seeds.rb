# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Event.destroy_all

# 10.times do |index|
#   Event.create!(date: Faker::Time,
#                 venue_id: Faker::Number,
#                 ticket_url: Faker::Internet.url,
#                 image: Faker::Internet.url,
#                 )
# end




e11 = Event.create :name => 'Oasis', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Hordern Pavillion', :ticket_url => Faker::Internet.url, :genre => 'Rock', :image => Faker::Internet.url
e12 = Event.create :name => 'Cloud Control', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Oxford Art Factory', :ticket_url => Faker::Internet.url, :genre => 'Alternative', :image => Faker::Internet.url
e13 = Event.create :name => 'Fleet Foxes', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Sydney Opera House', :ticket_url => Faker::Internet.url, :genre => 'Folk Rock', :image => Faker::Internet.url
e14 = Event.create :name => 'El-P', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Enmore Theatre', :ticket_url => Faker::Internet.url, :genre => 'Rap', :image => Faker::Internet.url
e15 = Event.create :name => 'Justin Bieber', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Qudos Bank Arena', :ticket_url => Faker::Internet.url, :genre => 'Pop', :image => Faker::Internet.url
e16 = Event.create :name => 'Sonic Youth', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The Metro Theatre', :ticket_url => Faker::Internet.url, :genre => 'Punk', :image => Faker::Internet.url
e17 = Event.create :name => 'Blink-182', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The Metro Theatre', :ticket_url => Faker::Internet.url, :genre => 'Pop-Punk', :image => Faker::Internet.url
e18 = Event.create :name => 'Jeremiah', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Oxford Art Factory', :ticket_url => Faker::Internet.url, :genre => 'Rap', :image => Faker::Internet.url
e19 = Event.create :name => 'Foo Fighters', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Enmore Theatre', :ticket_url => Faker::Internet.url, :genre => 'Rock', :image => Faker::Internet.url
e20 = Event.create :name => 'Foals', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Enmore Theatre', :ticket_url => Faker::Internet.url, :genre => 'Progressive Rock', :image => Faker::Internet.url
e21 = Event.create :name => 'Arca', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Sydney Opera House', :ticket_url => Faker::Internet.url, :genre => 'Electronic', :image => Faker::Internet.url
e22 = Event.create :name => 'Kavinsky', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Hordern Pavillion', :ticket_url => Faker::Internet.url, :genre => 'Synth-wave', :image => Faker::Internet.url
e23 = Event.create :name => 'Pearl Jam', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The Metro Theatre', :ticket_url => Faker::Internet.url, :genre => 'Rock', :image => Faker::Internet.url
e24 = Event.create :name => 'Big Boi', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The Metro Theatre', :ticket_url => Faker::Internet.url, :genre => 'Rap', :image => Faker::Internet.url
e25 = Event.create :name => 'Alt-J', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The State Theatre', :ticket_url => Faker::Internet.url, :genre => 'Alternative', :image => Faker::Internet.url
e26 = Event.create :name => 'Raincoats', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'The State Theatre', :ticket_url => Faker::Internet.url, :genre => 'Alternative', :image => Faker::Internet.url
e27 = Event.create :name => 'The Decemberists', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Sydney Opera House', :ticket_url => Faker::Internet.url, :genre => 'Folk-Rock', :image => Faker::Internet.url
e28 = Event.create :name => 'Mumford & Sons', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Qudos Bank Arena', :ticket_url => Faker::Internet.url, :genre => 'Folk-Rock', :image => Faker::Internet.url
e29 = Event.create :name => 'Chvrches', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Hordern Pavillion', :ticket_url => Faker::Internet.url, :genre => 'Pop', :image => Faker::Internet.url
e30 = Event.create :name => 'Slipknot', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Enmore Theatre', :ticket_url => Faker::Internet.url, :genre => 'Metal', :image => Faker::Internet.url
e31 = Event.create :name => 'Animal Collective', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Qudos Bank Arena', :ticket_url => Faker::Internet.url, :genre => 'Electronic', :image => Faker::Internet.url
e32 = Event.create :name => 'GWAR', :description => Faker::Simpsons.quote , :date=> Faker::Time, :venue_id=> 'Enmore Theatre', :ticket_url => Faker::Internet.url, :genre => 'Metal', :image => Faker::Internet.url

Venue.destroy_all
v1 = Venue.create :location => Faker::Address.latitude, :name => 'Hordern Pavillion', :url => Faker::Internet.url, :address => '1 Driver Ave, Moore Park NSW 2021'
v2 = Venue.create :location => Faker::Address.latitude, :name => 'Oxford Art Factory', :url => Faker::Internet.url, :address => '38-46 Oxford St, Darlinghurst NSW 2010'
v3 = Venue.create :location => Faker::Address.latitude, :name => 'Sydney Opera House', :url => Faker::Internet.url, :address => 'Bennelong Point, Sydney NSW 2000'
v4 = Venue.create :location => Faker::Address.latitude, :name => 'Enmore Theatre', :url => Faker::Internet.url, :address => '118-132 Enmore Rd, Newtown NSW 2042'
v5 = Venue.create :location => Faker::Address.latitude, :name => 'Qudos Bank Arena', :url => Faker::Internet.url, :address => 'Edwin Flack Ave & Olympic Blvd, Sydney Olympic Park NSW 2127'
v6 = Venue.create :location => Faker::Address.latitude, :name => 'The Metro Theatre', :url => Faker::Internet.url, :address => '624 George St, Sydney NSW 2000'
v7 = Venue.create :location => Faker::Address.latitude, :name => 'The State Theatre', :url => Faker::Internet.url, :address => '49 Market St, Sydney NSW 2000'


# User.destroy_all
# 10.times do |index|
#   User.create!(name: Faker::Time,
#                 image: Faker::Number,
#                 bio: Faker::Internet.url,
#                 hometown: Faker::Address.city,
#                 interests: Faker::Job.title,
#                 email: Faker::Internet.email,
#                 )
# end

#Venue and Events
v1.events << e11 << e22 << e29
v2.events << e12 << e18
v3.events << e13 << e21 << e27
v4.events << e14 << e19 << e20 << e30
v5.events << e15 << e28 << e31
v6.events << e16 << e17 << e23 << e24
v7.events << e25 << e26
