require 'pry'
class Patient
  attr_accessor :name
  @@patients = []

  def initialize(name)
    @name = name
    @@patients << self
  end

  def self.all
    @@patients
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |pat_appoint|
      pat_appoint.patient == self
      # binding.pry
    end
  end

  def doctors
    # binding.pry
    appointments.map do |pat_docs|
      pat_docs.doctor
    end
  end
end
