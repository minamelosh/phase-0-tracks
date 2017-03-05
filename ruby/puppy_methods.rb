# x = Classname.new
# x the instance of Classname
# Requirements for instance method:
# 1. Class
# 2. Method defined inside the class
# 3. Objet of the class.

# Method instance definiton : An instance method like the one above can be created simply by adding a method inside the class declaration (between the class and end keywords).

# Consider a method "sum(a,b)" defined inside the Classname and it returns the sum = a + b.
# if there is a method sum(a,b)
# x.sum(3,5) which should return 8
# puts x.sum(3,5) will dispaly on the screen.

class Puppy

  #This prints "Initializing new puppy instance ..." without having to call the initialize method
  #If we misspell initialize Ruby will not run this method, and we will not receive an error message.
  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  #Add a speak method that takes an integer, and then prints "Woof!" that many times.
  def speak(x)
  	puts "Woof!" * x
  end

  #Add a roll_over method that just prints "*rolls over*".
  def roll_over
  	puts "*rolls over*"
  end
  #Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
  # It is a common belief that 1 human year is equal to 7 dog years or
  # The formula is: 10.5 dog years per human year for the first 2 years, then 4 dog years per human year for each year after.

  def dog_years(age)

  	if age <= 0 && age >= 100
  		puts "Invalid age. The age should be between 1 and 99"
  	elsif age == 1 || age == 2
  		dog_age = age * 10.5
  		puts "The human age is #{age} and the dog age is #{dog_age}"
  	else
  		dog_age = ((age - 2) * 4) + (2 * 10.5)
  		puts "The human age is #{age} and the dog age is #{dog_age}"
  	end
  	dog_age
  end
  #Add a dog_eat method that take array of items and display each item that the dog likes to eat.
  def dog_eat(items)
  	items.each do |item|
  		puts "My puppy likes #{item}"
  	end
  end

end

#Release 2
class Cat

  def initialize
    puts "Initializing new cat instance ..."
  end

  def data(name, color, age)
    return "Cat name: #{name}.\nCat color: #{color}.\nCat age: #{age}."
  end

  def activities(activity)
    if activity == "eat"
      return "My Cat eats milk."
    elsif activity == "noise"
      return "Meow, Meow, Meow"
    elsif activity == "play"
      return "My Cat likes to play with me."
    else
      return "My Cat does nothing normal."
    end
  end

end

#Driver code
n = 0
cats = []

while n < 50
  pussy=Cat.new
  #pussy.data("Fluffy", "Brown", n+3)
  #pussy.activities("eat")
  cats <<  pussy.data("Fluffy", "Brown", n+3)
  cats << pussy.activities("eat")
  n += 1
end
puts cats


=begin
# Release 0

# Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
dog = Puppy.new
dog.fetch("ball")
# puts "-" * 50
# puts dog.fetch("ball")

# method instance for the speak() method.
dog.speak(3)

# method instance for the roll_over method.
dog.roll_over

# method instance for the dog_years() method
dog.dog_years(6)
dog.dog_years(1)

# method instance for dog_eat() method
dog.dog_eat(["Milk","Biscuits","Egg","Bones"])
=end
