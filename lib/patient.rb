class Patient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_appt = Appointment.new(date, self, doctor)
    new_appt
  end

  def appointments
    Appointment.all.select{ |appt| appt.patient == self }
  end

  def doctors
    self.appointments.collect{ |appt| appt.doctor }
  end


end
