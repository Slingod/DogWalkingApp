DogSitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.destroy_all


city1 = City.create(name: "Paris")
city2 = City.create(name: "Lyon")


dog_sitter1 = DogSitter.create(first_name: "Alice", last_name: "Johnson", city: city1)
dog_sitter2 = DogSitter.create(first_name: "Bob", last_name: "Smith", city: city2)

dog1 = Dog.create(name: "Buddy", breed: "Golden Retriever", city: city1)
dog2 = Dog.create(name: "Max", breed: "Labrador", city: city2)

Stroll.create(date: Time.now, dog_sitter: dog_sitter1, dog: dog1, city: city1)
Stroll.create(date: Time.now + 1.day, dog_sitter: dog_sitter2, dog: dog2, city: city2)

puts "Seeds created successfully!"