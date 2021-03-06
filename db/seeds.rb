# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

base_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
result = JSON.parse(open(base_url).read)
drinks = result['drinks']

puts 'cleaning up Ingredient database...'
Ingredient.destroy_all
puts 'database is clean!'

puts 'Creating ingredients'

new_drink = []

15.times do
  new_drink << drinks.sample.values.first
  new_drink.uniq.flatten
end

new_drink.each do |drink|
  ingredient = Ingredient.create(
    name: drink.capitalize
  )
  puts "ingredient #{ingredient.id} is created."
end

puts 'All Done!'
