class Doctor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self

  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select{ |appt| appt.doctor == self }
  end

  def new_appointment(patient, date)
    new_appt = Appointment.new(date, patient, self)
    new_appt
  end

  def patients
    self.appointments.collect{ |appt| appt.patient }
  end

end
