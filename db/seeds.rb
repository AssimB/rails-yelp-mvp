# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
wok = { name: 'Wok', address: '7 Boundary St, marseille E2 7JE', category: 'chinese' },
chez_luigi = { name: 'Chez Luigi', address: '89 Boundary St, Venise E2 7JE', category: 'italian' },
little_tokyo = { name: 'Little Tokyo', address: '12 Boundary St, Tokyo E2 7JE', category: 'japanese' },
bruxellois = { name: 'Bruxellois', address: '5 Boundary St, Bruxelle E2 7JE', category: 'belgian' },
chez_pierro = { name: 'Chez Pierro', address: '36 Boundary St, Paris E2 7JE', category: 'french' }

[ wok, chez_luigi, little_tokyo, bruxellois, chez_pierro ].each do |attributes|
	restaurant = Restaurant.create!(attributes)
	puts "Created #{restaurant.name}"
end
puts 'Finished!'
