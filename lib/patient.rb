class Patient
  @@all = []
  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    @appointments << Appointment.new(date, self, doctor)
  end


  def doctors
  end

end
