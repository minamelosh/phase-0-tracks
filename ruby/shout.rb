
=begin
module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
    words + "!!!" + ":)" + "YES THIS IS THE BEST"
  end

end

#Driver Code

puts Shout.yell_angrily("What is Happening?")
puts Shout.yell_happily("What is Happening?")
=end

module Shout
  def yell(words)
    puts "#{words}!!!!!"
  end
end

class Happy
  include Shout
  def yell_happy(words)
  puts words + ":) I am so Happy!"
  end
end

class Mad
  include Shout
  def yell_mad(words)
  puts words + ":( I am so Mad!"
  end
end

happy = Happy.new
happy.yell("What is happening?")
happy.yell_happy("Huh?!")

mad = Mad.new
mad.yell("What in the world?")
mad.yell_mad("yay")
