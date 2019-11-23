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
    # all the memberships the lifters have
    Membership.all.select {|memberships| memberships.lifter == self}
  end

  def self.average_lift_total
    # average lift total for all lifers
    lift_total_array = all.map {|lifters| lifters.lift_total}
    lift_total_array.sum / lift_total_array.length
  end

  def total_cost
    # total money spent on gym memberships
    memberships.map {|memberships| memberships.cost}.sum
  end

  def gym_signup (gym, cost)
    # given gym and cost sign lifter up for new gym
    Membership.new(self, gym, cost)
  end

end
