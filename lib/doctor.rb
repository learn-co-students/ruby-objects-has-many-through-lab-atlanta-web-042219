class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointment.all.select do |appointment_obj|
      appointment_obj.doctor == self
    end
  end

  def patients
    new_array= []
    self.appointments.select do |appointment_obj|
      new_array << appointment_obj.patient
  end
  new_array
end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

end
