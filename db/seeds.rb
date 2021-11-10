# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = %w[chinese italian japanese french belgian]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restoone = {
  name: 'Chez Nico', address: '7 Boundary St, London', phone_number: '0647409298', category: categories.sample
}

restotwo = {
  name: 'La fourch de Benj', address: '20 Av Montaigne, Paris', phone_number: '0645309870', category: categories.sample
}

restothree = {
  name: 'A la table de Louise', address: '42 rue fion, Sainté', phone_number: '0677653098', category: categories.sample
}

restofour = {
  name: 'Auberge de Clém', address: '10 Bvd la Victoire, Lyon', phone_number: '0700865598', category: categories.sample
}

restofive = {
  name: 'Mangez bien', address: '7 Boundary St, London E2 7JE', phone_number: '0644436598', category: categories.sample
}

[restoone, restotwo, restothree, restofour, restofive].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
