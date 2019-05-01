# class Patient
#     attr_accessor :name

#     @@all = []

#     def initialize(name)
#         @name = name
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def new_appointment(doctor, date)
#         Appointment.new(self, date, doctor)
#     end

#     def appointments
#         Appointment.all.select {|appointment| appointment.patient == self}
#     end

#     def doctors
#         self.appointments.map {|appt| appt.doctor}
#     end

# end


require 'pry'
class Patient 
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end

    def appointments
        # binding.pry
        Appointment.all.select { |appt| appt.patient == self }
    end

    def doctors  
        appointments.map { |appt| appt.doctor }
    end
end