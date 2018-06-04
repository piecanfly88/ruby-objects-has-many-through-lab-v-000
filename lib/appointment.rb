class Appointment
  attr_accessor :patient, :doctor, :date

  initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
  end
  
end
