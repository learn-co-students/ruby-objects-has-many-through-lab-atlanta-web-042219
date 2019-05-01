class Appointment
attr_accessor :patient, :doctor
attr_reader :date
@@all = []

def initialize(patient, date, doctor)
  #why can't this be initialize(date, patient, doctor)?
  @date = date
  @patient = patient
  @doctor = doctor
  @@all << self
end

def self.all
  @@all
end
end
