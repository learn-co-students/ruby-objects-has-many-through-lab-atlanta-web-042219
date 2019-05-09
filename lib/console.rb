require_relative 'artist'
require_relative 'song'
require_relative 'genre'

require_relative 'patient'
require_relative 'doctor'
require_relative 'appointment'

require 'pry'

stoner = Artist.new("Stoner")
all_american = Song.new("All American", "Stoner", "Pop")
trap = Genre.new("trap music")

domino = Artist.new("Domino")

another_level = Song.new("A.L.", "Stoner", "trap")

clouds = Song.new("clouds", "Domino", "trap")



bobby = Patient.new("Bobby")


carter = Doctor.new("Dr. Carter")

checkup = Appointment.new("tomorrow", bobby, carter)



#jazz = name.genre

binding.pry
0 #
