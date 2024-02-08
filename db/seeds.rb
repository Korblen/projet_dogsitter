# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
cities = City.create([{ city_name: 'Paris' }, { city_name: 'Lyon' }, { city_name: 'Marseille' }])

# Création de quelques sitters
sitters = Sitter.create([{ name: 'Alice', city: cities.first }, { name: 'Bob', city: cities.second }])

# Création de quelques chiens
dogs = Dog.create([{ name: 'Rex', city: cities.first }, { name: 'Max', city: cities.second }])

# Création de quelques promenades
strolls = Stroll.create([{ date: DateTime.now, dog: dogs.first, sitter: sitters.first }, { date: DateTime.now + 1.day, dog: dogs.second, sitter: sitters.second }])