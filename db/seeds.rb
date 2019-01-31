# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
	City.create(city_name: Faker::GameOfThrones.city)
end

10.times do
	Dog.create(name: Faker::GameOfThrones.character, city: City.all.sample)
end

10.times do
	Dogsitter.create(name: Faker::HarryPotter.character, city: City.all.sample)
end

# On cree des stroll qui ont un dogsitter
20.times do
	stroll = Stroll.create(dogsitter: Dogsitter.all.sample)
	3.times do # Et on ajoute plusieurs dogs
		stroll.dogs << Dog.all.sample
	end
end
