class Santa
  attr_reader :ethnicity, :age
  attr_accessor :gender

  #initialize method that prints "Initializing Santa instance ...".
  def initialize(gender, ethnicity, age)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @age = 0

    @reindeer_ranking = [
      "Rudolph", 
      "Dasher", 
      "Dancer", 
      "Prancer", 
      "Vixen", 
      "Comet", 
      "Cupid", 
      "Donner", 
      "Blitzen"]
  end

  #speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)
  def speak()
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  #eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!" 
  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!" 
  end

  def celebrate_birthday()
    @age = age + 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

end

#Driver Code
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

age =* (0..140)

  @ethnicity = example_ethnicities.sample
  @age = age.sample
  @gender = example_genders.sample

n = 0
while n < 50
  santas << Santa.new(@ethnicity, @gender, @age)
  puts "Santas gender: #{@gender}."
  puts "Santas ethnicity: #{@ethnicity}."
  puts "Santas age: #{@age}."
  puts "There are now #{santas.length} Santas in the array"
  puts "----"
  n+=1
end
