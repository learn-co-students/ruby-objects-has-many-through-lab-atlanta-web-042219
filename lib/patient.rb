class Patient

  @@all = []

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
    Appointment.all.select do |appt|
      appt.patient == self
    end
  end

  def doctors
    doctors = []
    Appointment.all.each do |appt|
      if appt.patient == self
        doctors << appt.doctor
      end
    end
    doctors
  end



end
