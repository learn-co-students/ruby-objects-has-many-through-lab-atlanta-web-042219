require 'pry'
class Doctor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, date, self)
  end

  def appointments
    Appointment.all.select do |app_obj|
      app_obj.doctor == self
    end
  end

  def patients
    self.appointments.collect do |app_obj|
      app_obj.patient
    end
  end

end
