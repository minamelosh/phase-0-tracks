# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

#Create a grocery list
def create_list(groceries)
    grocery_list = {}
    grocery = groceries.split
    grocery.each do |item|
    quantity = 1
    grocery_list[item] = quantity
  end
  return grocery_list
end

#create a method that will add item(s) to a list
def add_item(new_item, groceries_list, quantity)
    groceries_list[new_item] = quantity
    quantity = 1
    return groceries_list
end

#create a method that will remove an item from the list
def remove_item(new_item, groceries_list)
    groceries_list.delete(new_item)
    groceries_list
end

#method to update the quantity of an item
def update_quantity(new_item, groceries_list, quantity)
    groceries_list[new_item] = quantity
    groceries_list
end

#method to make it look pretty
def cool_list(grocery_list)
    puts "Grocery List"
    puts
    grocery_list.each do |item, quantity|
    puts "#{item.capitalize} : #{quantity}"
    puts
  end
end

#DRVER CODE
list = create_list("lemonade tomatoes onions icecream")
p add_item("grapefruit",list, 3)
p remove_item("lemonade", list)
p update_quantity("ice cream", list, 335)
p cool_list(list)


=begin
Review and Reflect:
What did you learn about pseudocode from working on this challenge?
Psuedocode is really important for organizing your program and all the methods you plan to create and what you will need to research for each one.

What are the tradeoffs of using arrays and hashes for this challenge?
Arrays require multiple data structures if you want to associate a grocery with it's quantity.  Hashes allow you to store the grocery with its quantity more easily and allows you easier access.

What does a method return?
What you assign as the return value, what it calculates/evaluates, or nil.

What kind of things can you pass into methods as arguments?
Almost any form of data you want.

How can you pass information between methods?
Parameters!

What concepts were solidified in this challenge, and what concepts are still confusing?
Using multiple methods together that share information.  I am still a little confused with .split and using a hash to create variables.
=end
