class Doctor
    attr_accessor :name, :patient, :appointment

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(patient, date)
        new_appointment = Appointment.new(date, self, patient)
    end

    def appointments
        Appointment.all.select { |record| record.doctor == self}
    end

    def patients
        appointments.collect { |slot| slot.patient}
    end
end