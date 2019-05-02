class Doctor
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
  # binding.pry
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self }
  end

  def patients
    # patient_array = []
    # self.appointments.each {|app|
    #   patient_array << app.patient
    # }
    # patient_array
    self.appointments.map {|app| app.patient}


    #whata does mean for Doctor` class needs an instance method
  end
end
