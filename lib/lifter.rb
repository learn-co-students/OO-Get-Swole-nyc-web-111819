class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end
  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end
  def gyms
    (Membership.all.select{|membership| membership.lifter == self}).map{|membership| membership.gym}
  end
  def self.liftTotalAverage
    Lifter.all.map{|lifter| lifter.lift_total}.reduce(:+)/Lifter.all.length.to_f
  end
  def totalCost
    array = memberships.map{|membership| membership.cost}
    array.reduce(:+)
  end
  def newMembership(gym, cost)
    Membership.new(self, gym, cost)
  end
  def self.all
    @@all
  end
end
