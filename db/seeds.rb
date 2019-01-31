5.times do
	c = City.create(city_name: Faker::GameOfThrones.city)
end
	puts '10 cities added'

10.times do
	d = Dog.create(name: Faker::GameOfThrones.character, city: City.all.sample)
	puts "Toutou #{d.name} added"
end

10.times do
	ds = Dogsitter.create(name: Faker::HarryPotter.character, city: City.all.sample)
	puts "Promeneur de toutou #{ds.name}"
end

# On cree des stroll qui ont un dogsitter
20.times do
	stroll = Stroll.create(dogsitter: Dogsitter.all.sample)
	3.times do # Et on ajoute plusieurs dogs
		stroll.dogs << Dog.all.sample
		puts "Toutou #{Dog.all.sample.name} ajoute a la promenade"
	end
end
