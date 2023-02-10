# Dogsitting

Project nº2 using Ruby on Rails (models only), and databases with Active Record

## Diagram

<img src=/Diagram_ER_Dogsitting.png width="600">

## Seed file

Simply run the seed file using :  
`$ rails db:seed`  
Here below is a description of the seed content :

#### Faker gem
```
require 'faker'
```
#### Clean-up of the database
```
Stroll.destroy_all
City.destroy_all
Dog.destroy_all  
Dogsitter.destroy_all
```
#### Creation of arrays and tables for specialties and cities
```
list_dog_names = ['Luna', 'Charlie', 'Bella', 'Daisy', 'Milo', 'Lucy', 'Cooper', 'Bailey', 'Teddy', 'Max', 'Zoe', 'Rocky', 'Nala', 'Roxy', 'Coco']
list_dog_breeds = ['Golden retriever', 'French bulldog', 'Labrador', 'German shepherd', 'Shiba inu', 'Chihuahua', 'Border collie']
list_cities = ['New York', 'Los Angeles', 'Chicago', 'Houston', 'Phoenix', 'Philadelphia', 'San Antonio', 'San Diego', 'San Francisco']

list_cities.each do |city| 
  c = City.create!(city_name: city)
end
```
#### Creation of dogs table
```
20.times do
  d = Dog.create!(dog_name: list_dog_names.sample, dog_breed: list_dog_breeds.sample, city_id: City.all.sample.id)
end
```
#### Creation of dogsitters table
```
20.times do
  h = Dogsitter.create!(sitter_name: Faker::Name.first_name, city_id: City.all.sample.id)
end
```
#### Creation of strolls table
```
50.times do
  s = Stroll.new
  s.date = Faker::Date.between(from: 2.years.ago, to: Date.today)
  s.dog = Dog.all.sample
  s.dogsitter = Dogsitter.all.sample
  s.save
end
```

## Tests
(Section to complete)
