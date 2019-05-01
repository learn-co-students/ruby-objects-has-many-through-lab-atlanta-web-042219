class Patient
  attr_accessor :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
  Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    new_array= []
    self.appointments.select do |appointment|
      new_array << appointment.doctor
  end
  new_array
  end
end
