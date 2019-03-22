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
  
  def new_appointment(patient, date)
    Appointment.new(date,self,patient)
  end
  
  def appointments
    Appointment.all.select { |app| app.doctor = self }
  end
  
  def patients
    apps = self.appointments
    pats = []
    apps.each { |a| pats << a.patient }
    pats
  end
end