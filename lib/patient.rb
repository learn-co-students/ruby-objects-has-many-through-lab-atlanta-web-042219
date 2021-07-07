class Patient
    attr_accessor :name, :appointment, :doctor

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, doctor, self)
    end

    def appointments
        Appointment.all.select { |spot| spot.patient == self}
    end

    def doctors
        appointments.collect { |appts| appts.doctor}
    end
end