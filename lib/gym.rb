class Gym
  attr_reader :name
@@all = []
  def initialize(name)
    @name = name
  @@all << self 
  end

def  self.all
  @@all 
end 

def memberships 
  Membership.all.select do |ship|
    ship.gym == self 
  end 
end 

def lifters 
  self.memberships.map do |ship|
    ship.lifter
  end 
end

def lifter_names
  self.lifters.map do |lifter|
    lifter.name
  end 
end 

def lift_total
  total = 0
  self.lifters.each do |lifter|
total += lifter.lift_total
  end 
  return total 
end 

end 
