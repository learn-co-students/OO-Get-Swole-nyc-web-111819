# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

anna = Lifter.new("Anna",80)
ethan = Lifter.new("Ethan", 90)
equinox = Gym.new("Equinox")
ny_sports_club = Gym.new("NY Sports Club")
membership1 = Membership.new(200, anna, equinox)
membership2 = Membership.new(200, ethan, equinox)
membership3 = Membership.new(50, anna, ny_sports_club)

# test code goes here

binding.pry

puts "Gains!"
