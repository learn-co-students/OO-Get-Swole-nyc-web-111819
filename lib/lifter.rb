class Lifter
  attr_reader :name, :lift_total
@@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
  @@all << self 
  end

 def self.all 
  @@all 
end 

def memberships
  Membership.all.select do |ship|
    ship.lifter == self  
  end 
end

def gyms
self.memberships.map do |ship|
  ship.gym 
end 
end 
def total_cost
  total = 0
  self.memberships.each do |ship|
   total += ship.cost 
  end 
  return total
end 

def self.average_lift_total 
  total = 0 
  @@all.each do |lifter|
total += lifter.lift_total 
  end 
  return total/@@all.length
end 

def signup(gym, cost)
  Membership.new(cost, gym, self)
end 

end 