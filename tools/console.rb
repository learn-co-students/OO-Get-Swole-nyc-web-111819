# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


la = Gym.new("LA Fitness")
pf = Gym.new("Planet Fitness")
equinox = Gym.new("Equinox")
blink = Gym.new("Blink")

shakil = Lifter.new("Shakil", 80)
alex = Lifter.new("Alex", 90)
tony = Lifter.new("Tony", 100)
rock = Lifter.new("Rock", 250)
arnold = Lifter.new("Arnold", 200)

mem1 = Membership.new(shakil, la, 35)
mem2 = Membership.new(alex, la, 45)
mem3 = Membership.new(tony, blink, 30)
mem4 = Membership.new(rock, pf, 20)
mem5 = Membership.new(rock, equinox, 300)
mem6 = Membership.new(arnold, equinox, 350)
mem7 = Membership.new(arnold, blink, 38)


binding.pry

puts "Gains!"
