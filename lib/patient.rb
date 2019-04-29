class Patient

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|element| element.patient == self}
  end

  def doctors
    new_array =[]
    self.appointments.each  do |element|
      new_array << element.doctor
    end
    new_array
  end

end
