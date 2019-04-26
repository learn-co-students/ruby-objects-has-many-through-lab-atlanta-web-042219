require 'pry'
class Appointment
  attr_accessor :patient, :date, :doctor
  @@all = []

  def initialize(patient, date, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
    # binding.pry
  end

end
