class Doctor
    attr_accessor :patient

    @@doctors = []

    def initialize(doctor)
        @doctor = doctor
        @@doctors << self
    end

    def self.all
        @@doctors
    end

    def new_appointment(patient, date)
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        appointments.map {|appointment| appointment.patient}
    end

end

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

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.map {|appt| appt.patient}
    end

end

# class Doctor
#     attr_accessor :name
  
#     @@all = []
  
#     def initialize(name)
#       @name = name
#       @@all << self
#     end
  
#     def self.all
#       @@all
#     end
  
#     def new_appointment(patient, date)
#       Appointment.new(patient, self, date)
#     end
  
#     def appointments
#       Appointment.all.select { |appointment| appointment.doctor == self }
#     end
  
#     def patients
#         self.appointments.map {|appt| appt.patient}
#     end
# end
