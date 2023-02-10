# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

list_dog_names = ['Luna', 'Charlie', 'Bella', 'Daisy', 'Milo', 'Lucy', 'Cooper', 'Bailey', 'Teddy', 'Max', 'Zoe', 'Rocky', 'Nala', 'Roxy', 'Coco']
list_dog_breeds = ['Golden retriever', 'French bulldog', 'Labrador', 'German shepherd', 'Shiba inu', 'Chihuahua', 'Border collie']
list_cities = ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 'San Francisco']

Stroll.destroy_all
City.destroy_all
Dog.destroy_all  
Dogsitter.destroy_all  

list_cities.each do |city| 
  c = City.create!(city_name: city)
end

20.times do
  d = Dog.create!(dog_name: list_dog_names.sample, dog_breed: list_dog_breeds.sample, city_id: City.all.sample.id)
end

20.times do
  h = Dogsitter.create!(sitter_name: Faker::Name.first_name, city_id: City.all.sample.id)
end

50.times do
  s = Stroll.new
  s.date = Faker::Date.between(from: 2.years.ago, to: Date.today)
  s.dog = Dog.all.sample
  s.dogsitter = Dogsitter.all.sample
  s.save
end