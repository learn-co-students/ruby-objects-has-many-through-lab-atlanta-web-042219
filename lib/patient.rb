require 'pry'
require_relative "./doctor.rb"
require_relative "./appointment.rb"

class Patient
    attr_accessor :name, :doctor, :date

    @@all= []

    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient
        end
    end

    def doctors
        Appointment.all.collect do |appt|
            # binding.pry
            appt.doctor
        end
    end
end