require 'pry'
require_relative "./patient.rb"
require_relative "./appointment.rb"

class Doctor
    attr_accessor :name, :date, :patient

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appt|
        appt.doctor == self
        end

    end

    def patients
        Appointment.all.collect do |pt|
            pt.patient
        end
    end


end