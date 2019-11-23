class Gym
  attr_reader :name

  @@all = [] 
  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    # all memeberships at this gym
    Membership.all.select {|memberships| memberships.gym == self}
  end

  def lifters
    # all the lifters at a specific gym
    memberships.map {|memberships| memberships.lifter}

  end

  def lifters_name
    # name of all lifters that gym
    lifters.map {|l| l.name}

  end

  def lift_total
    # combing lift total of all members at that gym
    lifters.map {|l| l.lift_total}.sum
  end

end
