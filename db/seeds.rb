# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroy all Data"
Citizen.destroy_all

puts "Create one normal citizen"
Citizen.create!(
  email: 'derp@gmail.com',
  password: 'test123',
  nric: 'S1231231A',
  postal_code: '123123',
)

puts "Create one admin"
Citizen.create!(
  email: 'admin@gmail.com',
  password: 'test123',
  nric: 'S1234567A',
  postal_code: '123412',
)

puts "Done"
