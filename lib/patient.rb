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
    Appointment.new(date,doctor,self)
  end
  
  def appointments
    Appointment.all.select { |app| app.patient == self }
  end
  
  def doctors
    apps = self.appointments
    docs = []
    apps.each { |a| docs << a.doctor }
    docs
  end
end