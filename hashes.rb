#Stores each clients data
client = {
  name: "",
  age: "",
  children: "",
  decor_theme: "",
}

#Prompts Client for their info
puts "What is your name?"
client[:name] = gets.chomp

puts "How old are you?"
client[:age]= gets.chomp.to_i

puts "How many children do you have?"
client[:children]= gets.chomp.to_i

puts "What is your preferred decor theme?"
client[:decor_theme]= gets.chomp

#Prints client data
puts "Name: #{client[:name]}"
puts "Age: #{client[:age]}"
puts "Number Of Children:  #{client[:children]}"
puts "Preferred Decor Theme: #{client[:decor_theme]}"

#Ask client to review data
puts "Does this info look correct? (y/n)"
correct_info = gets.chomp

if correct_info == "y"
  puts "Thank you! Your data has been saved!"

elsif correct_info == "n"
#Updates client data
  puts "Please enter the item you would like to update: name, age, number of children, or preferred decor theme."
  new_data = gets.chomp
  if new_data == "name"
    puts "Please enter correct name:"
    client[:name] = gets.chomp
  elsif new_data == "age"
    puts "Please enter correct age:"
    client[:age]= gets.chomp.to_i
  elsif new_data == "number of children"
    puts "Please enter correct number of children:"
    client[:children]= gets.chomp.to_i
  elsif new_data == "preferred decor theme"
      puts "Please enter correct preferred decor theme:"
    client[:decor_theme]= gets.chomp
  end
    #Prints Latest Client data
    puts "Name: #{client[:name]}"
    puts "Age: #{client[:age]}"
    puts "Number Of Children:  #{client[:children]}"
    puts "Preferred Decor Theme: #{client[:decor_theme]}"
    puts "Thank you, your data has been updated!"
end
