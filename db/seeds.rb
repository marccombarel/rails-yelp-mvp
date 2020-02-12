# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

restaurants = [
  { name: 'Le bon poulet', address: '119 rue nationale, Lille', phone_number: '0671139829', category: 'french'},
  { name: 'Le Shiba', address: '27 rue des trucs pas bons, Lille', phone_number: '0728134529', category: 'chinese'},
  { name: 'Le Babe', address: '50 rue hopital militaire, Lille', phone_number: '0783544529', category: 'french'},
  { name: 'Le Barbier qui fume', address: 'JSP et c pas grave, Lille', phone_number: '0783825469', category: 'french'},
  { name: 'Le Jomon de Negishi', address: 'Gna GnaGna pas grave, Lille', phone_number: '0783825469', category: 'japanese'}
]

restaurants.each { |restaurant| Restaurant.new(restaurant).save}
