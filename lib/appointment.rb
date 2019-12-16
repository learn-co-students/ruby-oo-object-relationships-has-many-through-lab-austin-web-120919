class Appointment

    attr_reader :date, :doctor, :patient

    @@all = []

    def initialize(date, patient, doctor)
        #binding.pry
        @date = date
        @patient = patient
        @doctor = doctor
        patient.appointment = self
        doctor.appointment = self
        @@all << self
    end

    def self.all
        @@all
    end


end