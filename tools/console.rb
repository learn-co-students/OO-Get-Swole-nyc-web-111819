# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Mario", 350)
lifter2 = Lifter.new("Lucca", 375)
lifter3 = Lifter.new("Vittor", 425)



gym1 = Gym.new("Blink")
gym2 = Gym.new("Equinox")
gym3 = Gym.new("TotalFit")

membership1 = Membership.new(500, lifter3, gym2)
membership2 = Membership.new(350, lifter2, gym3)
membership3 = Membership.new(250, lifter1, gym1)
membership4 = Membership.new(250, lifter1, gym1)
membership5 = Membership.new(500, lifter2, gym2)
membership6 = Membership.new(250, lifter3, gym1)
membership7 = Membership.new(500, lifter3, gym2)
membership8 = Membership.new(350, lifter1, gym3)
membership9 = Membership.new(250, lifter2, gym1)

binding.pry

puts "Gains!"
