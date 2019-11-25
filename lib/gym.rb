class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
  end
  def gymMemberships
    Membership.all.select{|membership| membership.gym == self}
  end
  def members
    (Membership.all.select{|membership| membership.gym == self}).map{|membership| membership.lifter}
  end
  def membersAtGym
    (Membership.all.select{|membership| membership.gym == self}).map{|membership| membership.lifter}
  end
  def liftTotal
    membersAtGym(self).map{|member| member.lift_total}.reduce(:+)
  end
  
  def self.all
    @@all
  end
end
