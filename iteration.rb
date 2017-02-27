def food
  puts "I am hungry, I want to eat!"
  yield("apple", "banana", "orange")
end

food {|food1, food2, food3| puts "I will eat #{food1}, #{food2}, and #{food3}" }

healthy_food = {
  fruits: "apple",
  vegatables: "spinach",
  meat: "chicken",
}
#new_healthy_food = {}
p healthy_food

healthy_food.each do |food_group, food|
  puts "#{food} is an example of a healthy food from #{food_group} food group."
end

p healthy_food
#p new_healthy_food

unhealthy_food = ["hamburger", "fries", "ice cream"]

p unhealthy_food
new_food = []

unhealthy_food.each do |bad_food|
  new_food << bad_food.next
end

p unhealthy_food
p new_food

unhealthy_food.map! do |bad_food|
  puts bad_food
  bad_food.next
end

puts "After .map call:"
p unhealthy_food

#Release 2
#1. A method that iterates through the items deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#Array
numbers = [ 1, 2, 5, 6, 7 ]
p numbers

numbers.each do |item|
  numbers.delete_if {|item| item < 5 }
end

p numbers

#Hash
hash_numbers = {
  num0: 1,
  num1: 2,
  num2: 5,
  num3: 6,
  num4: 7,
}

p hash_numbers

hash_numbers.each do |index, number|
  hash_numbers.delete_if {|index, number| number < 5 }
end

p hash_numbers

#2. A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

#Array
numbers2 = [ 1, 2, 5, 6, 7 ]
p numbers2

numbers2.each do |item|
  numbers2.delete_if {|item| item >= 5 }
end

p numbers2

#Hash
hash_numbers2 = {
  num0: 1,
  num1: 2,
  num2: 5,
  num3: 6,
  num4: 7,
}

p hash_numbers2

hash_numbers2.each do |index, number|
  hash_numbers2.delete_if {|index, number| number >= 5 }
end

p hash_numbers2

#3. A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

#Array
names = ["Anna", "Max", "Jonathan", "Kelly"]
p names
names2 = []

names.each do |name|
  names2 = names.select {|name| name.length < 4}
end

p names
p names2

#Hash
hash_names = {
  name0: "Anna",
  name1: "Max",
  name2: "Jonathan",
  name3: "Kelly"
}
p hash_names
hash_numbers2 = {}

hash_names.each do |index, name|
  hash_numbers2 = hash_names.select { |index, name| name.length < 4}
end

p hash_names
p hash_numbers2

#4. A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

#Array
animal_crackers = ["cat", "mouse", "dog", "bunny"]

index = 0
while index < animal_crackers.length
  animal_crackers.pop
  p animal_crackers
  index += 1
end

#Hash
animals = {
  0=>"cat",
  1=>"mouse",
  2=>"dog",
  3=>"bunny",
  4=>"elephant"
}

p animals
animals2 = {}

count = 1

until count > animals.length

  animals.each do |number, animal|
    animals2 = animals.delete_if {|number, animal| number < count }
  end
  count += 1
  p animals2
end
