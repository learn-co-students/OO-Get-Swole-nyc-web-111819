# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

gym1 = Gym.new("YMCA")
gym2 = Gym.new("ARMORY")
gym3 = Gym.new("ASPHALT GREEN")
lift1 = Lifter.new("Alex", 2500)
lift2 = Lifter.new("James", 2000)
lift3 = Lifter.new("Anna", 1500)
lift4 = Lifter.new("Matt", 10000)
lift5 = Lifter.new("Other Alex", 50)
mem1 = Membership.new(lift1, gym1, 500)
mem2 = Membership.new(lift2, gym2, 600)
mem3 = lift2.newMembership(gym3, 500)
mem4 = Membership.new(lift4, gym1, 1000)


binding.pry

puts "Gains!"
