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

  def membership_gym_list
    Membership.all.select {|membership|
    membership.gym == self
    }
  end

  def lifters_list
    membership_gym_list.map {|membership|
    membership.lifter
    }
  end

  def lifters_name
    lifters_list.map {|lifter|
    lifter.name
    }
  end

  def combined_lift_total
    total = 0
    lifters_list.each {|lifter|
    total += lifter.lift_total
    }
    total
  end

end
