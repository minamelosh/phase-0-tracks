<<<<<<< HEAD
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
=======
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end

class Bird
  include Flight
end

class Plane
  include Flight
end

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
>>>>>>> 65ac8485be64d61f32760986f287a4eb55815497
