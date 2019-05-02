require_relative 'appointment'
require_relative 'doctor'
require_relative 'patient'
require_relative 'artist'
require_relative 'genre'
require_relative 'song'

require 'pry'

# doc1 = Doctor.new("Evan Kim")
# pat1 = Patient.new("Andrew Allen")
#
# doc2 = Doctor.new("Han")
# pat2 = Patient.new("Jae")
#
# app1 = Appointment.new("05-02-19", doc1, pat1)
# app2 = Appointment.new("05-02-19", doc2, pat2)

artist1 = Artist.new("Jae")
genre1 = Genre.new("Hip")
song1 = Song.new("Hello", artist1, genre1)

binding.pry
# doc.appointments
# pat.appointments

# doc.patients
# pat.doctors
