class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    self.class.all << self 
  end

  def self.all
    @@all 
  end 

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self 
    end 
  end 

  def gyms 
    memberships.map do |membership|
      membership.gym
    end 
  end 

  def total_gym_cost 
    memberships.reduce(0) {|total, membership| total + membership.cost}
  end 

  def new_member(gym, cost)
    Membership.new(cost, self, gym)
  end 

  def self.average_lift_total
    lift_total = self.all.reduce(0) {|total, lifter| total + lifter.lift_total}
    lift_total / self.all.length.to_f
  end 

end
