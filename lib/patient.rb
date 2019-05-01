class Patient
attr_accessor :name

@@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

def new_appointment(doctor, date)
  Appointment.new(self, date, doctor)
end

def self.all
  @@all
end

def appointments
  Appointment.all.select do |a|
    a.patient == self
  end
end

def doctors
  self.appointments.map {|x| x.doctor}
end

end
