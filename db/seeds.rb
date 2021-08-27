# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars',: name: 'Lord of the Rings'])
#   Character.create(name: 'Luke', movie: movies.first)
Property.create!(
  name: 'The best offer!',
  type_of_property: 'department',
  street: 'Mary Street',
  external_number: '12',
  internal_number: '1b',
  neighborhood: 'Saint Lake',
  city: 'Oklahoma',
  country: 'US',
  rooms: 4,
  bathrooms: 3,
  comments: 'This is a nice option!'
)