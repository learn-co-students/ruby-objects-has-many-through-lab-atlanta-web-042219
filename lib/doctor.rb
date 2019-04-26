require "pry"

class Doctor
	attr_accessor :name
	@@all = []

	def self.all
		@@all
	end

	def initialize(doctor_name)
		@name = doctor_name
		@@all << self
	end

	def new_appointment(patient_obj, new_date)
		Appointment.new(new_date, patient_obj, self)
	end

	def appointments
		Appointment.all.select {|app| app.doctor == self}
	end

	def patients
		patient_arr = []
		appointments.each {|app| patient_arr << app.patient}
		patient_arr
	end
end
