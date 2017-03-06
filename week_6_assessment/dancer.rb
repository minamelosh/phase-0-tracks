class Dancer
  attr_accessor :age, :name, :dancer_queue

#Creates a new Dancer and sets their name and age.
  def initialize(name, age)
    @name = name
    @age = age
    @dancer_queue = []
  end

#Retrieves Dancers name
  def name()
    @name
  end

#Retrieves Dancers age and allows you to update
  def age()
    @age
  end

#You can twirl!
  def pirouette()
    return "*twirls*"
  end

#Bow!
  def bow()
    return "*bows*"
  end

#Dance move leap!
  def leap()
    return "*leap*"
  end

#Add a dancer the the queue
  def queue_dance_with(name)
    @dancer_queue = @dancer_queue.push(name)
  end

  def card()
    @dancer_queue
  end

  def begin_next_dance()
    #@dancer_queue = @dancer_queue.delete_at(0)
    dancer = @dancer_queue[0]
    @dancer_queue.delete(dancer)
    return "Now dancing with #{dancer}."
  end

end
