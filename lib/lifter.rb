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

  def membership_list
    Membership.all.select {|membership|
    membership.lifter == self
    }
  end

  def membership_total_cost
    total = 0
    membership_list.each {|membership|
    total += membership.cost}
    total
  end

  def gym_list
    membership_list.map {|membership|
    membership.gym
    }
  end

  def self.average_lift_total
    total = 0
    @@all.each {|lifter|
    total += lifter.lift_total
    }
    total / @@all.length
  end

  def new_gym(cost, gym)
    Membership.new(cost, self, gym)
  end

end
