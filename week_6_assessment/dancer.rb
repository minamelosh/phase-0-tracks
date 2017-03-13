class Dancer
  attr_accessor :age, :dancer
  attr_reader :name, :dancer_queue

#Creates a new Dancer and sets their name and age.
  def initialize(name, age)
    @name = name
    @age = age
    @dancer_queue = []
  end

#You can twirl!
  def pirouette
    "*twirls*"
  end

#Bow!
  def bow
    "*bows*"
  end

#Dance move leap!
  def leap
    "*leap*"
  end

#Add a dancer the the queue
  def queue_dance_with(name)
    @dancer_queue = @dancer_queue.push(name)
  end

#Returns current queue list of who you will dance with
  def card
    @dancer_queue
  end

#Lets you know who you are dancing with and updates the dancer queue
  def begin_next_dance
    dancer = @dancer_queue[0]
    @dancer_queue.delete(dancer)
    "Now dancing with #{dancer}."
  end

end
