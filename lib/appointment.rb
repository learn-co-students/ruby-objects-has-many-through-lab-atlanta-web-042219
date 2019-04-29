require 'pry'
require_relative "./doctor.rb"
require_relative "./patient.rb"

class Appointment
    attr_accessor :date, :patient, :doctor

    @@all = []

    def self.all
        @@all
    end

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end

    def patient
        @patient
    end

    def doctor
        @doctor
    end
end