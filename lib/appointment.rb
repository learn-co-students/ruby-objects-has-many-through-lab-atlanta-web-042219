# class Appointment 
#     attr_accessor :date, :patient, :doctor

#     @@all = []

#     def initialize(patient, date, doctor)
#         @patient = patient
#         @date = date
#         @doctor = doctor
#         @@all << self
#     end

#     def self.all
#         @@all
#     end
# end


class Appointment
    @@all = []

    attr_accessor :patient, :date, :doctor

    def initialize(patient, date, doctor)
        @patient = patient
        @date = date
        @doctor = doctor
        @@all << self
    end

    def self.all
        @@all
    end
end