require "pry"

class Patient
	attr_accessor :name
	@@all = []

	def self.all
		@@all
	end

	def initialize(patient_name)
		@name = patient_name
		@@all << self
	end

	def new_appointment(doctor_obj, new_date)
		Appointment.new(new_date, self, doctor_obj)
	end

	def appointments
		Appointment.all.select {|app| app.patient == self}
	end

	def doctors
		doc_arr = []
		appointments.each {|app| doc_arr << app.doctor}
		doc_arr
	end
end
