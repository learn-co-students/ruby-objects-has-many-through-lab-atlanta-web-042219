require "pry"

class Appointment
	attr_accessor :date, :patient, :doctor
	@@all = []

	def self.all
		@@all
	end

	def initialize(app_date, patient_obj, doctor_obj)
		@date = app_date
		@patient = patient_obj
		@doctor = doctor_obj
		@@all << self
	end
end
