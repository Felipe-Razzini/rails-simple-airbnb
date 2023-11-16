# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

Flat.create!(
  name: 'Light & Spacious Flat',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cantinho da Roca',
  address: 'Rua do Matagal, Varginha',
  description: 'A lovely country house surrounded by green areas. Three double bedrooms, two bathrooms and a large deck',
  price_per_night: 80,
  number_of_guests: 6
)

Flat.create!(
  name: 'Scottish flat',
  address: 'Trafalgar Square, Edinburgh',
  description: 'A beautiful flat inside a traditional scotch building. One bedroom, one bathroom and fully equiped kitchen',
  price_per_night: 110,
  number_of_guests: 2
)

Flat.create!(
  name: 'French dream house',
  address: '20 Rue Chapon, Paris',
  description: 'A one of a kind apartment in the center of Paris. Two bedrooms, one bathroom and fully equiped kitchen',
  price_per_night: 170,
  number_of_guests: 4
)

puts 'Finished!'
