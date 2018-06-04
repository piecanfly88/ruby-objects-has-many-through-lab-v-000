class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, sefl, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
end
