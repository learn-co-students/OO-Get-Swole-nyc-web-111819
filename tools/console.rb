# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here


lifter1 = Lifter.new("Liam", 180)
lifter2 = Lifter.new("Arnold", 550)
lifter3 = Lifter.new("The Rock", 400)
lifter4 = Lifter.new("Alan", 20)

gym1 = Gym.new("Planet Fitness")
gym2 = Gym.new("Gold's Gym")
gym3 = Gym.new("Equinox")
gym4 = Gym.new("Blink")

membership1 = Membership.new(10, gym1, lifter1)
membership2 = Membership.new(150, gym2, lifter2)
membership3 = Membership.new(250, gym3, lifter3)
membership4 = Membership.new(100, gym4, lifter1)
membership5 = Membership.new(250, gym3, lifter2)

binding.pry

puts "Gains!"
