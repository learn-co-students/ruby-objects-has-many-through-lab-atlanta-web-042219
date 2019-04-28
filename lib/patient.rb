require 'pry'
class Patient
attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def new_appointment(doctor_obj, date)
    Appointment.new(self, date, doctor_obj)
  end

  def appointments
    Appointment.all.select do |app_obj|
      app_obj.patient == self
  end
end

  def doctors
    self.appointments.collect do |app_obj|
      app_obj.doctor
    end
  end


end
