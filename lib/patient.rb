class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.find_all{|appt| appt.patient == self}
    end

    def doctors
        Appointment.all.select{|appt| appt.patient == self}.collect{|appt| appt.doctor}
    end

end