# Given an age in seconds, calculate how old 
# someone would be on a given planet

class SpaceAge

  MULTIPLIERS = {
    earth: 3.15576e7,
    jupiter: 3.74356e8,
    mars: 5.93540e7,
    mercury: 7.60054e6,
    neptune: 5.20042e9,
    saturn: 9.29292e8,
    uranus: 2.65137e9,
    venus: 1.94141e7,
  }.freeze

  attr_reader :age

  def initialize(age)
    @age = age
  end

  MULTIPLIERS.each { |planet, multiplier|
    define_method("on_#{planet}") { age / multiplier }   
  }

end


