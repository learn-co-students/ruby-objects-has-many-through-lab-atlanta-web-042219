class Patient
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|app| app.patient == self }
  end

  def doctors
    doctor_array = []
    self.appointments.each {|app|
      doctor_array << app.doctor
    }
    doctor_array
    # self.appointments.map {|app| app.doctor}
    #
  end
end
