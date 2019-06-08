require 'pry'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
require_relative '../lib/genre.rb'
require_relative '../lib/doctor.rb'
require_relative '../lib/appointment.rb'
require_relative '../lib/patient.rb'

zac_brown = Artist.new("Zac Brown Band")
weezer = Artist.new("Weezer")


chicken_fried = Song.new("Chicken Fried", "Zac Brown Band", "country")
toes = Song.new("Toes", "Zac Brown Band", "country")
sweater = Song.new("The Sweater Song", "Weezer", "rock")
island_in_the_sun = Song.new("Island in the Sun", "Weezer", "rock")

rock = Genre.new("rock")
country = Genre.new("country")

house = Doctor.new("Gregery House")
ramoray = Doctor.new("Drake Remoray")
melfi = Doctor.new("Jennifer Melfi")

appt1 = Appointment.new("09/22", "Chris Kalfas", "Gregery House")
appt2 = Appointment.new("11/11","Ross Geller", "Drake Remoray")
appt3 = Appointment.new("03/15", "Tony Saprano", "Jennifer Melfi")

kalfas = Patient.new("Chris Kalfas")
geller = Patient.new("Ross Geller")
saprano = Patient.new("Tony Saprano")


binding.pry

0