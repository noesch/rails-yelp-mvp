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
columbia = { name: "Columbia", address: "Am alten Markt", category: 'italian', phone_number: '+490800555777333' }
lingling = { name: "Ling Ling", address: "Pagodenstr. 5", category: 'chinese', phone_number: '+490809754335679' }
sushi_sano = { name: "Sushi Sano", address: "Munich", category: 'japanese', phone_number: '+4908753332000012' }
ameuse_gueule = { name: "Ameuse Gueule", address: "Rue de Palais", category: 'french', phone_number: '+49080986666432' }
frittenwirt = { name: "Frittenwirt", address: "An der Friteuse", category: 'belgian', phone_number: '+4908066664442009' }

[columbia, lingling, sushi_sano, ameuse_gueule, frittenwirt].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished'
