require 'pry'
class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    # binding.pry
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    # binding.pry
    Appointment.all.select do |doc_appoints|
      doc_appoints.doctor == self
      # binding.pry
    end
  end

  def patients
    # Appointment.all.select do |doc_patients|
    #   doc_patients.patient.self
      # binding.pry
      appointments.map {|x| x.patient}
  end
end
